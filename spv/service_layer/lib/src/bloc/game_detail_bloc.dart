import 'package:service_layer_spv/src/bloc/view_model_mappable_mixin.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:service_layer_spv/src/datasource/cache/cache.dart';
import 'package:service_layer_spv/src/datasource/soccer_datasource.dart';
import 'package:common_spv/common.dart';
import 'package:service_layer_spv/src/models/model_mapper.dart';
import 'package:service_layer_spv/src/usecase/usecase.dart';
import 'package:service_layer_spv/src/datasource/user/user_preferences.dart';

const defaultLiveRefreshRateInMilliSeconds = 20 * 1000;
const defaultNotLiveRefreshRateInMilliSeconds = 40 * 1000;

class GameDetailBloc with ViewModelMappable {
  final MatchEventUseCase _matchDetailEventUseCase;
  final UserPreference _userPreference;

  Observable<Response<MatchDetail>> get _matchDetail =>
      _matchDetailEventUseCase.matchDetailInfoWithEvents;

  GameDetailBloc(
    final String matchId,
    final Cache cache,
    final SporzaSoccerDataSource network,
    final this._userPreference, {
    liveRefreshInMilliSeconds = defaultLiveRefreshRateInMilliSeconds,
    notLiveRefreshInMilliSeconds = defaultNotLiveRefreshRateInMilliSeconds,
  }) : _matchDetailEventUseCase = MatchEventUseCase(
          matchId,
          cache,
          network,
          liveRefreshInMilliSeconds,
          notLiveRefreshInMilliSeconds,
        );

  Observable<Response<GameDetailHeading>> get headingInfo =>
      _matchDetail.zipWith(
        _userPreference.favoriteTeams,
        (matchDetailResponse, favoriteTeams) => mapToViewModels(
              matchDetailResponse,
              Mapper.mapMatchDetailToGameDetailHeading,
              extraParam1: favoriteTeams,
            ),
      );

  Observable<Response<List<Event>>> get events => _matchDetail.map(
        (Response<MatchDetail> matchDetail) => mapToViewModels(
              matchDetail,
              Mapper.mapMatchDetailToListOfEvents,
            ),
      );
}
