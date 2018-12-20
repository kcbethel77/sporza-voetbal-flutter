import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/model_mapper.dart';
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/usecase/usecase.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/bloc/view_model_mappable_mixin.dart';
import 'package:spv/datasource/user/user_preferences.dart';

//BLoC for the Calendar and Ranking
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
      (pair) => mapToViewModel(
          pair.first,
          (competition) =>
              Mapper.mapCompetitionToCalendar(competition, pair.last)));

  Observable<Response> get ranking => _rankingUseCase.ranking.map(
      (response) => mapToViewModel(response, Mapper.mapCompetitionToRanking));
}
