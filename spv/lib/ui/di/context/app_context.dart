import 'package:flutter/material.dart';
import 'package:spv/service/bloc/bloc.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/network/network.dart';
import 'package:http/http.dart' as http;
import 'package:spv/service/datasource/user/user_preferences.dart';

class AppContext extends InheritedWidget with AppDependencies {
  http.Client _httpClient;

  Cache _cache;
  UserPreference _userPreference;
  Network _network;

  DrawerBloc _drawerBloc;

  final Widget child;

  AppContext({@required this.child}) {
    this._httpClient = http.Client();

    this._network = NetworkImpl(_httpClient);
    this._cache = CacheImpl();
    this._userPreference = UserPreferenceImpl();

    this._drawerBloc = DrawerBloc(_cache, _network, _userPreference);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  @override
  Cache cache(BuildContext context) => _cache;

  @override
  DrawerBloc drawerBloc(BuildContext context) => _drawerBloc;

  @override
  Network network(BuildContext context) => _network;

  @override
  UserPreference userPreference(BuildContext context) => _userPreference;
}

abstract class AppDependencies {
  Cache cache(BuildContext context);
  UserPreference userPreference(BuildContext context);
  Network network(BuildContext context);

  DrawerBloc drawerBloc(BuildContext context);
}