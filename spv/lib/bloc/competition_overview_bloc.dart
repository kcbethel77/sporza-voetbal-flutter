import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/model_mapper.dart';
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/usecase/use_case.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/bloc/view_model_mappable_mixin.dart';

//BLoC for the Calendar and Ranking
class CompetitionOverviewBloc with ViewModelMappable {
  final CalendarForCompetitionUseCase _calendarUseCase;

  CompetitionOverviewBloc(final String competitionId, final Cache cache,
      final SporzaSoccerDataSource network)
      : _calendarUseCase =
            CalendarForCompetitionUseCase(competitionId, cache, network);

  Observable<Response<Calendar>> get calendar =>
      _calendarUseCase.calendarForCompetition.map((response) =>
          mapToViewModel(response, Mapper.mapCompetitionToCalendar));

  Observable<Response> get ranking => Observable.empty();
}
