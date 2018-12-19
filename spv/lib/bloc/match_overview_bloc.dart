//BLoC for the Calendar and Ranking
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/usecase/use_case.dart';

class MatchOverviewBloc {

  final CalendarForCompetitionUseCase _calendarUseCase;

  MatchOverviewBloc(final String competitionId, final Cache cache, final
  SporzaSoccerDataSource network) :
        _calendarUseCase =
        CalendarForCompetitionUseCase(competitionId, cache, network);

  Observable<Response<Calendar>> get calendar => Observable.empty();
}