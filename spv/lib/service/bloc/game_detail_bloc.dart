import 'package:rxdart/rxdart.dart';
import 'package:spv/model/network/match_detail.dart';
import 'package:spv/model/view/event.dart';
import 'package:spv/model/view/game_detail_heading.dart';

import 'package:spv/service/bloc/view_model_mappable_mixin.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/soccer_datasource.dart';
import 'package:spv/service/datasource/user/user_preferences.dart';
import 'package:spv/model/model_mapper.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/matchdetail/events/match_event_usecase.dart';

const defaultLiveRefreshRateInMilliSeconds = 20 * 1000;
const defaultNotLiveRefreshRateInMilliSeconds = 40 * 1000;

class GameDetailBloc with ViewModelMappable {
  final MatchEventUseCase _matchDetailEventUseCase;
  final UserPreference _userPreference;

  Observable<Response<MatchDetail>> get _matchDetail => _matchDetailEventUseCase.matchDetailInfoWithEvents;

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

  Observable<Response<GameDetailHeading>> get headingInfo => _matchDetail.zipWith(
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
