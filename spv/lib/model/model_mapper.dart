import 'package:built_collection/built_collection.dart';
import 'package:spv/model/network/network_models.dart' as network;
import 'package:spv/model/view/view_models.dart' as view;
import 'package:spv/model/common/common_models.dart' as common;

class Mapper {
  //<editor-fold desc="News">
  static List<view.News> mapListOfNewsToViewModels(List<network.News> news) =>
      _mapListOfTtoR<network.News, view.News>(news, mapNewsToViewModel);

  static view.News mapNewsToViewModel(network.News news) {
    return (view.NewsBuilder()
          ..id = news.id
          ..accessibility = news.accessibilityText
          ..contentUrl = news.contentLinks.isNotEmpty ? news.contentLinks.first?.url : null
          ..title = news.title
          ..description = news.description
          ..imageUrl = news.imageLinks.isNotEmpty ? news.imageLinks.first?.url : null
          ..date = news.date)
        .build();
  }

  //</editor-fold>

  //<editor-fold desc="Video">
  static List<view.Video> mapListOfVideosToViewModels(List<network.Video> videos) =>
      _mapListOfTtoR<network.Video, view.Video>(videos, mapVideoToViewModel);

  static view.Video mapVideoToViewModel(network.Video video) {
    return (view.VideoBuilder()
          ..id = video.id
          ..accessibility = video.accessibilityText
          ..title = video.title
          ..date = video.date
          ..contentUrl = video.contentLinks.isNotEmpty ? video.contentLinks.first?.url : null
          ..imageUrl = video.imageLinks.isNotEmpty ? video.imageLinks.first?.url : null
          ..adDomain = video.videoLinks.isNotEmpty ? video.videoLinks.first?.adDomain : null
          ..adPartner = video.videoLinks.isNotEmpty ? video.videoLinks.first?.adPartner : null
          ..adContent = video.videoLinks.isNotEmpty ? video.videoLinks.first?.adContent : null
          ..adCategory = video.videoLinks.isNotEmpty ? video.videoLinks.first?.adCategory : null
          ..adLocation = video.videoLinks.isNotEmpty ? video.videoLinks.first?.adLocation : null
          ..adConsent = video.videoLinks.isNotEmpty ? video.videoLinks.first?.adConsent : null)
        .build();
  }

  //</editor-fold>

  //<editor-fold desc="Phase">
  static bool _isCurrentPhase(final network.Phase phase, final String defaultPhase) => phase.id == defaultPhase;

  static String _nameForPhase(final network.Phase phase) => phase.label;

  //<editor-fold desc="Calendar">
  static List<view.CalendarPhase> _mapPhasesToCalendarPhases(
          final BuiltList<network.Phase> phases, final String defaultPhase, final List<String> favoriteTeams) =>
      phases
          .map((phase) => (view.CalendarPhaseBuilder()
                ..name = _nameForPhase(phase)
                ..isCurrent = _isCurrentPhase(phase, defaultPhase)
                ..matchDays = ListBuilder(_mapToMatchDays(phase.matchDays, phase.currentMatchDay, favoriteTeams)))
              .build())
          .toList();

  static List<view.MatchDay> _mapToMatchDays(final BuiltList<network.MatchDay> matchDays, final String currentMatchDay,
          final List<String> favoriteTeams) =>
      matchDays
          .map((matchDay) => (view.MatchDayBuilder()
                ..name = matchDay.name
                ..accessibility = matchDay.accessibilityText
                ..isCurrent = currentMatchDay != null && currentMatchDay == matchDay.id
                ..matches = ListBuilder(_mapToMatches(matchDay.matches, favoriteTeams)))
              .build())
          .toList();

  static List<view.Match> _mapToMatches(BuiltList<network.Match> matches, final List<String> favoriteTeams) => matches
      .map((match) => (view.MatchBuilder()
            ..id = match.id
            ..accessibility = match.accessibilityText
            ..homeTeam = _mapToTeam(match.homeTeam, favoriteTeams: favoriteTeams)
            ..awayTeam = _mapToTeam(match.awayTeam, favoriteTeams: favoriteTeams)
            ..homeScore = match.homeScore
            ..awayScore = match.awayScore
            ..startTime = match.startTime
            ..status = match.status
            ..isKnockout = match.isKnockout)
          .build())
      .toList();

  static view.TeamBuilder _mapToTeam(network.Team team, {final List<String> favoriteTeams = const []}) =>
      view.TeamBuilder()
        ..id = team.id
        ..name = team.name
        ..iconUrl = team.logoUrl
        ..isFavorite = favoriteTeams.contains(team.id)
        ..canBeFavourite = team.canSelectAsFavourite ?? true;

  static view.Calendar mapCompetitionToCalendar(
          final network.Competition competition, final List<String> favoriteTeams) =>
      (view.CalendarBuilder()
            ..competitionTitle = competition.label
            ..phases =
                ListBuilder(_mapPhasesToCalendarPhases(competition.phases, competition.defaultPhase, favoriteTeams)))
          .build();

  //</editor-fold>

  //<editor-fold desc="Ranking">
  static view.Ranking mapCompetitionToRanking(final network.Competition competition) => (view.RankingBuilder()
        ..competitionTitle = competition.label
        ..phases = ListBuilder(_mapPhasesToRankingPhases(competition.phases, competition.defaultPhase)))
      .build();

  static List<view.RankingPhase> _mapPhasesToRankingPhases(
          final BuiltList<network.Phase> phases, final String defaultPhase) =>
      phases
          .map((phase) => (view.RankingPhaseBuilder()
                ..name = _nameForPhase(phase)
                ..isCurrent = _isCurrentPhase(phase, defaultPhase)
                ..rankings = ListBuilder(_mapListOfTtoR(phase.ranking, _mapRankingToRank)))
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
  //</editor-fold>

  //<editor-fold desc="Game Detail Heading">
  static view.GameDetailHeading mapMatchDetailToGameDetailHeading(
          final network.MatchDetail matchDetail, final List<String> favoriteTeams) =>
      (view.GameDetailHeadingBuilder()
            ..competitionTitle = matchDetail.competition.label
            ..homeTeam = _mapToTeam(matchDetail.homeTeam, favoriteTeams: favoriteTeams)
            ..awayTeam = _mapToTeam(matchDetail.awayTeam, favoriteTeams: favoriteTeams)
            ..info = _mapToHeadingInfo(
              matchDetail.startTime,
              matchDetail.status,
              matchDetail.homeScore,
              matchDetail.awayScore,
              matchDetail.statusName,
              matchDetail.statusLabel,
              matchDetail.isKnockout,
              matchDetail.knockoutEnd,
              matchDetail.statusDay,
              matchDetail.statusDate,
            ))
          .build();

  static view.HeadingInfo _mapToHeadingInfo(
      final String startTime,
      final common.MatchStatus status,
      final int homeScore,
      final int awayScore,
      final String statusName,
      final String statusLabel,
      final bool isKnockout,
      final String knockOutEnd,
      final String statusDay,
      final String statusDate) {
    var headingInfo;
    switch (status) {
      case common.MatchStatus.END:
        headingInfo = (view.EndMatchHeadingInfoBuilder()
              ..score = "$homeScore - $awayScore"
              ..statusLabel = statusLabel
              ..knockoutEnd = isKnockout ? knockOutEnd : null)
            .build();
        break;
      case common.MatchStatus.SUSPENDED:
        headingInfo = (view.SuspendedHeadingInfoBuilder()
              ..statusLabel = statusLabel
              ..score = "($homeScore - $awayScore)")
            .build();
        break;
      case common.MatchStatus.SUSPENDED_INDEFINITELY:
        headingInfo = (view.SuspendedIndefinitelyHeadingInfoBuilder()
              ..statusLabel = statusLabel
              ..score = "($homeScore - $awayScore)")
            .build();
        break;
      case common.MatchStatus.NOT_STARTED:
        headingInfo = (view.NotStartedHeadingInfoBuilder()
              ..statusDay = statusDay
              ..statusLabel = statusLabel)
            .build();
        break;
      case common.MatchStatus.AFTER_TODAY:
        headingInfo = (view.AfterTodayHeadingInfoBuilder()
              ..statusDay = statusDay
              ..statusDate = statusDate
              ..statusLabel = statusName)
            .build();
        break;
      case common.MatchStatus.CANCELLED:
        headingInfo = (view.CancelledHeadingInfoBuilder()..statusLabel = statusLabel).build();
        break;
      case common.MatchStatus.LIVE:
        headingInfo = (view.LiveMatchHeadingInfoBuilder()
              ..score = "$homeScore - $awayScore"
              ..statusLabel = statusLabel)
            .build();
        break;
      case common.MatchStatus.POSTPONED:
        headingInfo = (view.PostponedHeadingInfoBuilder()..statusLabel = statusLabel).build();
        break;
      default:
        headingInfo = (view.DefaultHeadingInfoBuilder()).build();
        break;
    }
    return headingInfo;
  }

  //</editor-fold>

  //<editor-fold desc="Match Events">
  static List<view.Event> mapMatchDetailToListOfEvents(final network.MatchDetail matchDetail) =>
      matchDetail.eventList.map(_mapMatchEventToViewEvent).where((value) => value != null).toList();

  static view.Event _mapMatchEventToViewEvent(final network.MatchEvent matchEvent) {
    view.EventType eventType;
    view.Event event;

    try {
      eventType = view.EventType.valueOf(matchEvent.eventType);
    } on ArgumentError {}

    switch (eventType) {
      case view.EventType.GOAL:
      case view.EventType.OWN_GOAL:
      case view.EventType.PENALTY_GOAL:
      case view.EventType.PENALTY_MISSED:
      case view.EventType.CORNER_GOAL:
      case view.EventType.FREE_KICK_GOAL:
      case view.EventType.SHOOTOUT_SCORED:
      case view.EventType.SHOOTOUT_MISSED:
      case view.EventType.YELLOW_CARD:
      case view.EventType.SECOND_YELLOW_CARD:
      case view.EventType.RED_CARD:
      case view.EventType.SUBSTITUTION:
        event = (view.DefaultEventBuilder()
              ..score = "${matchEvent.homeScore} - ${matchEvent.awayScore}"
              ..timeStamp = _mapNumericTimestampToTimestamp(matchEvent.timeStamp)
              ..icon = _eventIconTypeForEventType(eventType)
              ..personName = _bestPersonName(matchEvent.person)
              ..isHomeTeam = matchEvent.eventOwningTeam == network.EventOwningTeam.HOME)
            .build();
        break;
      case view.EventType.COMMENT:
      case view.EventType.COMMENT_GOAL:
        event = (view.CommentEventBuilder()
              ..title = matchEvent.title
              ..text = matchEvent.text
              ..timeStamp = _mapNumericTimestampToTimestamp(matchEvent.timeStamp))
            .build();
        break;
      case view.EventType.COMMENT_QUOTE:
        event = (view.CommentQuoteEventBuilder()
              ..quote = matchEvent.text
              ..author = _bestPersonName(matchEvent.person)
              ..timeStamp = _mapNumericTimestampToTimestamp(matchEvent.timeStamp))
            .build();
        break;
      case view.EventType.PHASE:
        event = (view.PhaseEventBuilder()..name = matchEvent.title).build();
        break;
      case view.EventType.BANNER:
        break;
      case view.EventType.VIDEO:
        event = (view.VideoEventBuilder()
              ..videoId = matchEvent.media.id
              ..title = matchEvent.title
              ..mediaType = matchEvent.media.mediaType
              ..imageUrl = matchEvent.media.thumbnailUrl)
            .build();
        break;
      case view.EventType.LIVESTREAM:
        event = (view.LiveStreamEventBuilder()
              ..liveStreamId = matchEvent.media.id
              ..title = matchEvent.title
              ..url = matchEvent.media.url
              ..mediaType = matchEvent.media.mediaType
              ..adContent = matchEvent.media.adContent
              ..adLocation = matchEvent.media.adLocation
              ..adCategory = matchEvent.media.adCategory
              ..adConsent = matchEvent.media.adConsent)
            .build();
        break;
      case view.EventType.INFO:
        event = (view.InfoEventBuilder()..info = matchEvent.text).build();
        break;
    }

    return event;
  }

  static String _mapNumericTimestampToTimestamp(final int timeStamp) => "$timeStamp'";

  static view.EventIconType _eventIconTypeForEventType(final view.EventType eventType) {
    final map = {
      view.EventType.GOAL: view.EventIconType.GOAL,
      view.EventType.OWN_GOAL: view.EventIconType.OWN_GOAL,
      view.EventType.PENALTY_GOAL: view.EventIconType.PENALTY_GOAL,
      view.EventType.PENALTY_MISSED: view.EventIconType.PENALTY_MISSED,
      view.EventType.CORNER_GOAL: view.EventIconType.CORNER_GOAL,
      view.EventType.FREE_KICK_GOAL: view.EventIconType.FREE_KICK_GOAL,
      view.EventType.SHOOTOUT_SCORED: view.EventIconType.SHOOTOUT_SCORED,
      view.EventType.SHOOTOUT_MISSED: view.EventIconType.SHOOTOUT_MISSED,
      view.EventType.YELLOW_CARD: view.EventIconType.YELLOW_CARD,
      view.EventType.SECOND_YELLOW_CARD: view.EventIconType.SECOND_YELLOW_CARD,
      view.EventType.RED_CARD: view.EventIconType.RED_CARD,
      view.EventType.SUBSTITUTION: view.EventIconType.SUBSTITUTION,
    };
    return map[eventType];
  }

  static String _bestPersonName(network.Person person) {
    var name = person.shortName;
    if (person.firstName != null) {
      name = "${person.firstName} ${person.lastName}";
    }
    return name;
  }

  //</editor-fold>

  //<editor-fold desc="Menu">
  static view.Competition _mapCompetitionToCompetition(final network.Competition competition) =>
      (view.CompetitionBuilder()
            ..id = competition.id
            ..abbreviation = competition.countryShort
            ..name = competition.label
            ..accessibility = competition.accessibilityText)
          .build();

  static view.DrawerMenu mapMenuToDrawerMenu(final network.Menu menu) => (view.DrawerMenuBuilder()
        ..favouriteCompetitions = ListBuilder(_mapListOfTtoR(menu.favouriteCompetitions, _mapCompetitionToCompetition))
        ..nonFavouriteCompetitions =
            ListBuilder(_mapListOfTtoR(menu.nonFavouriteCompetitions, _mapCompetitionToCompetition)))
      .build();

  //</editor-fold>

  static List<R> _mapListOfTtoR<T, R>(Iterable<T> list, [R mapFunc(T t)]) => list.map(mapFunc).toList();
}
