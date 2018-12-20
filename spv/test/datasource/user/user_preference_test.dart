import 'package:test/test.dart';
import 'package:spv/datasource/user/user_preferences.dart';

void main() {
  UserPreferenceImpl userPref = UserPreferenceImpl(path: "json");

  final List<String> emptyFavorites = [];
  final List<String> someFavorites = ["1", "2", "3"];

  tearDown(() async {
    await userPref.removeDir("json");
  });

  group("user cache", () {
    test("should cache favorite teams", () async {
      await userPref.setFavoriteCompetitions(someFavorites);
      List<String> favComps =
          (await userPref.favoriteCompetitions.toList()).first;
      expect(favComps, someFavorites);
    });

    test("save no favorites", () async {
      await userPref.setFavoriteTeams(emptyFavorites);
      List<String> favComps =
          (await userPref.favoriteCompetitions.toList()).first;
      expect(favComps, emptyFavorites);
    });

    test("should cache favorite competitions", () async {
      await userPref.setFavoriteTeams(someFavorites);
      List<String> favTeams =
          (await userPref.favoriteTeams.toList()).first;
      expect(favTeams, someFavorites);
    });
  });
}
