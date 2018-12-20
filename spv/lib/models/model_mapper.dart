import 'package:built_collection/built_collection.dart';
import 'package:spv/models/network/network_models.dart' as network;
import 'package:spv/models/view/view_models.dart' as view;

class Mapper {
  static List<view.News> mapListOfNewsToViewModels(List<network.News> news) =>
      _mapListOfTtoR<network.News, view.News>(news, mapNewsToViewModel);

  static view.News mapNewsToViewModel(network.News news) {
    return (view.NewsBuilder()
          ..id = news.id
          ..accessibility = news.accessibilityText
          ..contentUrl =
              news.contentLinks.isNotEmpty ? news.contentLinks.first?.url : null
          ..title = news.title
          ..description = news.description
          ..imageUrl =
              news.imageLinks.isNotEmpty ? news.imageLinks.first?.url : null
          ..date = news.date)
        .build();
  }

  static List<view.Video> mapListOfVideosToViewModels(
          List<network.Video> videos) =>
      _mapListOfTtoR<network.Video, view.Video>(videos, mapVideoToViewModel);

  static view.Video mapVideoToViewModel(network.Video video) {
    return (view.VideoBuilder()
          ..id = video.id
          ..accessibility = video.accessibilityText
          ..title = video.title
          ..date = video.date
          ..contentUrl = video.contentLinks.isNotEmpty
              ? video.contentLinks.first?.url
              : null
          ..imageUrl =
              video.imageLinks.isNotEmpty ? video.imageLinks.first?.url : null
          ..adDomain = video.videoLinks.isNotEmpty
              ? video.videoLinks.first?.adDomain
              : null
          ..adPartner = video.videoLinks.isNotEmpty
              ? video.videoLinks.first?.adPartner
              : null
          ..adContent = video.videoLinks.isNotEmpty
              ? video.videoLinks.first?.adContent
              : null
          ..adCategory = video.videoLinks.isNotEmpty
              ? video.videoLinks.first?.adCategory
              : null
          ..adLocation = video.videoLinks.isNotEmpty
              ? video.videoLinks.first?.adLocation
              : null
          ..adConsent = video.videoLinks.isNotEmpty
              ? video.videoLinks.first?.adConsent
              : null)
        .build();
  }

  static bool _isCurrentPhase(
          final network.Phase phase, final String defaultPhase) =>
      phase.id == defaultPhase;

  static String _nameForPhase(final network.Phase phase) => phase.label;

  //<editor-fold desc="Calendar">
  static List<view.CalendarPhase> _mapPhasesToCalendarPhases(
          final BuiltList<network.Phase> phases,
          final String defaultPhase,
          final List<String> favoriteTeams) =>
      phases
          .map((phase) => (view.CalendarPhaseBuilder()
                ..name = _nameForPhase(phase)
                ..isCurrent = _isCurrentPhase(phase, defaultPhase)
                ..matchDays = ListBuilder(_mapToMatchDays(
                    phase.matchDays, phase.currentMatchDay, favoriteTeams)))
              .build())
          .toList();

  static List<view.MatchDay> _mapToMatchDays(
          final BuiltList<network.MatchDay> matchDays,
          final String currentMatchDay,
          final List<String> favoriteTeams) =>
      matchDays
          .map((matchDay) => (view.MatchDayBuilder()
                ..name = matchDay.name
                ..accessibility = matchDay.accessibilityText
                ..isCurrent = currentMatchDay != null
                ..matches =
                    ListBuilder(_mapToMatches(matchDay.matches, favoriteTeams)))
              .build())
          .toList();

  static List<view.Match> _mapToMatches(
          BuiltList<network.Match> matches, final List<String> favoriteTeams) =>
      matches
          .map((match) => (view.MatchBuilder()
                ..id = match.id
                ..accessibility = match.accessibilityText
                ..homeTeam =
                    _mapToTeam(match.homeTeam, favoriteTeams: favoriteTeams)
                ..awayTeam =
                    _mapToTeam(match.awayTeam, favoriteTeams: favoriteTeams)
                ..homeScore = match.homeScore
                ..awayScore = match.awayScore
                ..startTime = match.startTime
                ..status = match.status
                ..isKnockout = match.isKnockout)
              .build())
          .toList();

  static view.TeamBuilder _mapToTeam(network.Team team,
          {final List<String> favoriteTeams = const []}) =>
      view.TeamBuilder()
        ..id = team.id
        ..name = team.name
        ..iconUrl = team.logoUrl
        ..isFavorite = favoriteTeams.contains(team.id)
        ..canBeFavourite = team.canSelectAsFavourite ?? true;

  static view.Calendar mapCompetitionToCalendar(
          final network.Competition competition,
          final List<String> favoriteTeams) =>
      (view.CalendarBuilder()
            ..competitionTitle = competition.label
            ..phases = ListBuilder(_mapPhasesToCalendarPhases(
                competition.phases, competition.defaultPhase, favoriteTeams)))
          .build();

  //</editor-fold>

  //<editor-fold desc="Ranking">
  static view.Ranking mapCompetitionToRanking(
          final network.Competition competition) =>
      (view.RankingBuilder()
            ..competitionTitle = competition.label
            ..phases = ListBuilder(_mapPhasesToRankingPhases(
                competition.phases, competition.defaultPhase)))
          .build();

  static List<view.RankingPhase> _mapPhasesToRankingPhases(
          final BuiltList<network.Phase> phases, final String defaultPhase) =>
      phases
          .map((phase) => (view.RankingPhaseBuilder()
                ..name = _nameForPhase(phase)
                ..isCurrent = _isCurrentPhase(phase, defaultPhase)
                ..rankings = ListBuilder(
                    _mapListOfTtoR(phase.ranking, _mapRankingToRank)))
              .build())
          .toList();

  static view.Rank _mapRankingToRank(final network.Ranking ranking) {
    final view.Team team = _mapToTeam(ranking.team).build();
    return (view.RankBuilder()
          ..id = ranking.id
          ..accessibility = ranking.accessibilityText
          ..name = team.name
          ..iconUrl = team.iconUrl
          ..position = ranking.rank
          ..matchedPlayed = ranking.nrOfMatches
          ..points = ranking.points)
        .build();
  }

  //</editor-fold>

  static List<R> _mapListOfTtoR<T, R>(Iterable<T> list, [R mapFunc(T t)]) =>
      list.map(mapFunc).toList();
}
