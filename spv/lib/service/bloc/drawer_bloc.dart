import 'package:rxdart/rxdart.dart';
import 'package:spv/model/view/drawer_menu.dart';
import 'package:spv/service/bloc/view_model_mappable_mixin.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/soccer_datasource.dart';
import 'package:spv/service/datasource/user/user_preferences.dart';
import 'package:spv/model/model_mapper.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/competition/overview/competition_usecase.dart';

class DrawerBloc with ViewModelMappable {
  final CompetitionsUseCase _competitionOverviewUseCase;

  DrawerBloc(
    final Cache _cache,
    final SporzaSoccerDataSource _network,
    final UserPreference _userPreferences,
  ) : _competitionOverviewUseCase = CompetitionsUseCase(_cache, _network, _userPreferences);

  Observable<Response<DrawerMenu>> get drawer => _competitionOverviewUseCase.favoriteCompetitions
      .map((response) => mapToViewModels(response, Mapper.mapMenuToDrawerMenu));
}
