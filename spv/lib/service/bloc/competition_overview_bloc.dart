import 'package:rxdart/rxdart.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/soccer_datasource.dart';
import 'package:spv/service/datasource/user/user_preferences.dart';
import 'package:spv/model/model_mapper.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/calendar/calendar_usecase.dart';
import 'package:spv/service/usecase/ranking/ranking_usecase.dart';
import 'package:spv/service/bloc/view_model_mappable_mixin.dart';

class CompetitionOverviewBloc with ViewModelMappable {
  final CalendarUseCase _calendarUseCase;
  final RankingUseCase _rankingUseCase;
  final UserPreference _userPreference;

  CompetitionOverviewBloc(
    final String competitionId,
    final Cache cache,
    final SporzaSoccerDataSource network,
    final this._userPreference,
  )   : _calendarUseCase = CalendarUseCase(competitionId, cache, network),
        _rankingUseCase = RankingUseCase(competitionId, cache, network);

  Observable<Response<Calendar>> get calendar => Observable.zip(
      [_calendarUseCase.calendar, _userPreference.favoriteTeams],
      (pair) => mapToViewModels(pair.first, Mapper.mapCompetitionToCalendar, extraParam1: pair.last));

  Observable<Response<Ranking>> get ranking =>
      _rankingUseCase.ranking.map((response) => mapToViewModels(response, Mapper.mapCompetitionToRanking));
}
