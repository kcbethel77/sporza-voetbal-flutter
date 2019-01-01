import 'package:service_layer_spv/src/datasource/cache/cache.dart';
import 'package:service_layer_spv/src/datasource/soccer_datasource.dart';
import 'package:service_layer_spv/src/models/model_mapper.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:service_layer_spv/src/models/view/view_models.dart';
import 'package:service_layer_spv/src/usecase/usecase.dart';
import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/bloc/view_model_mappable_mixin.dart';
import 'package:service_layer_spv/src/datasource/user/user_preferences.dart';

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
      (pair) => mapToViewModels(pair.first, Mapper.mapCompetitionToCalendar,
          extraParam1: pair.last));

  Observable<Response> get ranking => _rankingUseCase.ranking.map(
      (response) => mapToViewModels(response, Mapper.mapCompetitionToRanking));
}
