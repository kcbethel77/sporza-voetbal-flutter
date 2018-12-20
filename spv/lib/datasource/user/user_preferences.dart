import 'dart:io';
import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/file_handling.dart';

abstract class UserPreference {
  Observable<List<String>> get favoriteTeams;

  Observable<List<String>> get favoriteCompetitions;

  Future<void> setFavoriteTeams(final List<String> favoriteIds);

  Future<void> setFavoriteCompetitions(final List<String> favoriteCompetitions);
}

class UserPreferenceImpl with FileHandling implements UserPreference {
  static String _userStorage = "user/";
  final String _favoriteTeamsPath = "$_userStorage/favoriteTeams";
  final String _favoriteTeamsFile = "teams";

  final String _favoriteCompetitionsPath = "$_userStorage/favoriteCompetitions";
  final String _favoriteCompetitionsFile = "competitions";

  final String path;

  @override
  String get testPath => path;

  UserPreferenceImpl({this.path});

  Future<File> get competitionsFile async =>
      await getFolder(_favoriteCompetitionsPath, _favoriteCompetitionsFile);

  Future<File> get teamsFile async =>
      await getFolder(_favoriteTeamsPath, _favoriteTeamsFile);

  @override
  Observable<List<String>> get favoriteCompetitions =>
      Observable.fromFuture(_getListOfStrings(competitionsFile));

  @override
  Observable<List<String>> get favoriteTeams =>
      Observable.fromFuture(_getListOfStrings(teamsFile));

  @override
  Future<void> setFavoriteCompetitions(
          final List<String> favoriteCompetitions) async =>
      _saveListOfStrings(favoriteCompetitions, competitionsFile);

  @override
  Future<void> setFavoriteTeams(List<String> favoriteIds) =>
      _saveListOfStrings(favoriteIds, teamsFile);

  Future<void> _saveListOfStrings(
          List<String> list, Future<File> fileToWriteTo) async =>
      await (await fileToWriteTo).writeAsString(json.encode(list));

  Future<List<String>> _getListOfStrings(Future<File> fileToRead) async {
    try {
      var file = await fileToRead;
      var fileContents = await file.readAsString();
      return List.from(json.decode(fileContents));
    } on Exception catch (e) {}
    return [];
  }
}
