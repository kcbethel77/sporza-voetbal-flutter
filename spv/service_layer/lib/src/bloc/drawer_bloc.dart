import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/bloc/view_model_mappable_mixin.dart';
import 'package:service_layer_spv/src/datasource/cache/cache.dart';
import 'package:service_layer_spv/src/datasource/soccer_datasource.dart';
import 'package:service_layer_spv/src/datasource/user/user_preferences.dart';
import 'package:service_layer_spv/src/models/model_mapper.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:common_spv/common.dart';

import 'package:service_layer_spv/src/usecase/usecase.dart';

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
