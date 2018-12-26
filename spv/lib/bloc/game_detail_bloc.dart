import 'package:spv/bloc/view_model_mappable_mixin.dart';
import 'package:spv/models/common/common.dart';
import 'package:spv/models/response.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/models/model_mapper.dart';
import 'package:spv/usecase/usecase.dart';
import 'package:spv/datasource/user/user_preferences.dart';

const defaultLiveRefreshRateInMilliSeconds = 20 * 1000;
const defaultNotLiveRefreshRateInMilliSeconds = 40 * 1000;

class GameDetailBloc with ViewModelMappable {
  final MatchEventUseCase _matchDetailEvent;
  final BehaviorSubject<Response<MatchDetail>> _matchDetailCache;
  final BehaviorSubject<bool> _isLive;
  final UserPreference _userPreference;

  final int notLiveRefreshInMilliSeconds;
  final int liveRefreshInMilliSeconds;

  Observable<int> get _refreshRateStream =>
      _isLive.stream.distinct().map((isLive) => isLive ? liveRefreshInMilliSeconds : notLiveRefreshInMilliSeconds);

  Observable<Response<MatchDetail>> get _rawMatchDetail =>
      _matchDetailEvent.matchDetailInfoWithEvents.doOnData((data) => _matchDetailCache.value = data);

  Observable<Response<MatchDetail>> get _matchDetailCacheStream =>
      _matchDetailCache.value != null ? Observable.just(_matchDetailCache.value) : Observable.never();

  Observable<Response<MatchDetail>> get _matchDetail => Observable.race([
        _matchDetailCacheStream,
        _rawMatchDetail,
      ]).doOnData((it) {
        if (it is Data<MatchDetail>) {
          _isLive.value = it.value.status == MatchStatus.LIVE;
        }
      });

  GameDetailBloc(
    final String matchId,
    final Cache cache,
    final SporzaSoccerDataSource network,
    final this._userPreference, {
    this.liveRefreshInMilliSeconds = defaultLiveRefreshRateInMilliSeconds,
    this.notLiveRefreshInMilliSeconds = defaultNotLiveRefreshRateInMilliSeconds,
  })  : _matchDetailEvent = MatchEventUseCase(matchId, cache, network),
        _matchDetailCache = BehaviorSubject(),
        _isLive = BehaviorSubject(seedValue: false);

  //<editor-fold desc="heading info">
  Observable<Response<GameDetailHeading>> _headingInfo() => _matchDetail.zipWith(
      _userPreference.favoriteTeams,
      (matchDetailResponse, favoriteTeams) => mapToViewModels(
            matchDetailResponse,
            Mapper.mapMatchDetailToGameDetailHeading,
            extraParam1: favoriteTeams,
          ));

  Observable<Response<GameDetailHeading>> get headingInfo =>
      _refreshRateStream.switchMap((refreshRate) => Observable.periodic(Duration(milliseconds: refreshRate))
          .doOnData((_) => _matchDetailCache.value = null)
          .flatMap((_) => _headingInfo()));

  //</editor-fold>

  Observable<Response<List<Event>>> get events => _events;

  Observable<Response<List<Event>>> get _events => _matchDetail
      .map((Response<MatchDetail> matchDetail) => mapToViewModels(matchDetail, Mapper.mapMatchDetailToListOfEvents));
}
