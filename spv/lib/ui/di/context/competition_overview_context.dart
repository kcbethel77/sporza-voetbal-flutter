import 'package:flutter/widgets.dart';
import 'package:spv/service/bloc/bloc.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/network/network.dart';
import 'package:spv/service/datasource/user/user_preferences.dart';
import 'package:spv/ui/di/context/app_context.dart';

class CompetitionOverviewContext extends InheritedWidget implements AppDependencies {
  final Widget child;

  CompetitionOverviewContext({Key key, this.child});

  AppDependencies _appContextFromBuildContext(BuildContext ctx) {
    return ctx.inheritFromWidgetOfExactType(AppContext) as AppDependencies;
  }

  CompetitionOverviewBloc fromCompetitionId(BuildContext context, String id) {
    return CompetitionOverviewBloc(
      id,
      cache(context),
      network(context),
      userPreference(context),
    );
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  @override
  Cache cache(BuildContext context) => _appContextFromBuildContext(context).cache(context);

  @override
  DrawerBloc drawerBloc(BuildContext context) => _appContextFromBuildContext(context).drawerBloc(context);

  @override
  Network network(BuildContext context) => _appContextFromBuildContext(context).network(context);

  @override
  UserPreference userPreference(BuildContext context) => _appContextFromBuildContext(context).userPreference(context);
}
