import 'package:built_collection/built_collection.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/model/common/common_models.dart' as common;
import './model_constants.dart';

Calendar buildCalendarViewModel({
  String competitionTitle = label,
  List<CalendarPhase> phases = const [],
}) {
  return (CalendarBuilder()
        ..competitionTitle = competitionTitle
        ..phases = ListBuilder(phases))
      .build();
}

CalendarPhase buildCalendarPhaseViewModel({
  String name = label,
  bool isCurrent = isCurrent,
  List<MatchDay> matchDays = const [],
}) {
  return (CalendarPhaseBuilder()
        ..name = name
        ..isCurrent = isCurrent
        ..matchDays = ListBuilder(matchDays))
      .build();
}

MatchDay buildMatchDayViewModel(
    {bool isCurrent = isCurrent,
    String name = name,
    String accessibilityText = accessibilityText,
    List<Match> matches = const []}) {
  return (MatchDayBuilder()
        ..isCurrent = isCurrent
        ..name = name
        ..accessibility = accessibilityText
        ..matches = ListBuilder(matches))
      .build();
}

Match buildMatchViewModel(
  HeadingInfo headingInfo,
  Team homeTeam,
  Team awayTeam, {
  String accessibilityText = accessibilityText,
  String startTime = startTime,
  int homeScore = homeScore,
  String id = id,
  bool isKnockout = isKnockout,
  common.MatchStatus matchStatus = matchStatus,
  int awayScore = awayScore,
}) {
  return (MatchBuilder()
        ..startTime = startTime
        ..accessibility = accessibilityText
        ..awayScore = awayScore
        ..homeScore = homeScore
        ..info = headingInfo
        ..id = id
        ..isKnockout = isKnockout
        ..status = matchStatus
        ..awayTeam = awayTeam.toBuilder()
        ..homeTeam = homeTeam.toBuilder())
      .build();
}

Team buildTeamViewModel({
  String id = id,
  String name = name,
  bool canBeFavourite = canSelectAsFavourite,
  bool isFavourite = isFavourite,
  String iconUrl = iconUrl,
}) {
  return (TeamBuilder()
        ..id = id
        ..name = name
        ..canBeFavourite = canBeFavourite
        ..isFavorite = isFavourite
        ..iconUrl = iconUrl)
      .build();
}

HeadingInfo buildHeadingInfoViewModel(common.MatchStatus status,
    {int homeScore = homeScore,
    int awayScore = awayScore,
    String statusLabel = statusLabel,
    bool isKnockout = isKnockout,
    String knockOutEnd = knockOutEnd,
    String statusDay = statusDay,
    String statusDate = statusDate,
    String statusName = statusName}) {
  var headingInfo;
  switch (status) {
    case common.MatchStatus.END:
      headingInfo = (EndMatchHeadingInfoBuilder()
            ..score = "$homeScore - $awayScore"
            ..statusLabel = statusLabel
            ..knockoutEnd = isKnockout ? knockOutEnd : null)
          .build();
      break;
    case common.MatchStatus.SUSPENDED:
      headingInfo = (SuspendedHeadingInfoBuilder()
            ..statusLabel = statusLabel
            ..score = "($homeScore - $awayScore)")
          .build();
      break;
    case common.MatchStatus.SUSPENDED_INDEFINITELY:
      headingInfo = (SuspendedIndefinitelyHeadingInfoBuilder()
            ..statusLabel = statusLabel
            ..score = "($homeScore - $awayScore)")
          .build();
      break;
    case common.MatchStatus.NOT_STARTED:
      headingInfo = (NotStartedHeadingInfoBuilder()
            ..statusDay = statusDay
            ..statusLabel = statusLabel)
          .build();
      break;
    case common.MatchStatus.AFTER_TODAY:
      headingInfo = (AfterTodayHeadingInfoBuilder()
            ..statusDay = statusDay
            ..statusDate = statusDate
            ..statusLabel = statusName)
          .build();
      break;
    case common.MatchStatus.CANCELLED:
      headingInfo = (CancelledHeadingInfoBuilder()..statusLabel = statusLabel).build();
      break;
    case common.MatchStatus.LIVE:
      headingInfo = (LiveMatchHeadingInfoBuilder()
            ..score = "$homeScore - $awayScore"
            ..statusLabel = statusLabel)
          .build();
      break;
    case common.MatchStatus.POSTPONED:
      headingInfo = (PostponedHeadingInfoBuilder()..statusLabel = statusLabel).build();
      break;
    default:
      headingInfo = (DefaultHeadingInfoBuilder()).build();
      break;
  }
  return headingInfo;
}
