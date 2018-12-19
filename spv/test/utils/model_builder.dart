import 'package:built_collection/built_collection.dart';
import 'package:spv/models/network/network_models.dart';

const String id = "id";
const String accessibilityText = "accessibilityText";
const String country = "country";
const String date = "date";
const String description = "description";
const String title = "title";
const String name = "name";
const String label = "label";
const String rel = "rel";
const int position = 42;
const String defaultPhase = "defaultPhase";
const String url = "http://www.sporza.be/";
const String publicationId = "pubId";
const String labelShort = "labelShort";
const String currentMatchDay = "currentMatchDay";
const int currentMatchDayIndex = 34;
const MediaType mediaType = MediaType.VRT;
const String adDomain = "adDomain";
const String adPartner = "adPartner";
const String adContent = "adContent";
const String adCategory = "adCategory";
const String adLocation = "adLocation";
const String adConsent = "adConsent";
const String logoUrl = "http://www.sporza.be/logoUrl.png";
const String countryShort = "countryShort";
const String startTime = "startTime";
const String status = "status";
const int homeScore = 19;
const int awayScore = 90;
const String statusName = "status name";
const String statusLabel = "status label";
const bool isKnockout = true;
const bool canSelectAsFavourite = true;
const bool hasRanking = true;
const bool sporzaFeatured = true;
const bool additionalInfo = true;
const bool isFavourite = true;

const String homeTeamName = "homeTeam";
const String awayTeamName = "awayTeam";

final Team homeTeam = buildTeamItem(
    id: "${homeTeamName}_$id",
    name: homeTeamName,
    logoUrl: "${url}_$homeTeamName");
final Team awayTeam = buildTeamItem(
    id: "${awayTeamName}_$id",
    name: awayTeamName,
    logoUrl: "${url}_$awayTeamName");

Link buildLink({String id = id, String url = url, String rel = rel}) {
  return (LinkBuilder()
        ..id = id
        ..rel = rel
        ..url = url)
      .build();
}

VideoLink buildVideoLink(
    {String id = id,
    String publicationId = publicationId,
    String url = url,
    MediaType mediaType = mediaType,
    String adDomain = adDomain,
    String adPartner = adPartner,
    String adContent = adContent,
    String adCategory = adCategory,
    String adLocation = adLocation,
    String adConsent = adConsent}) {
  return (VideoLinkBuilder()
        ..id = id
        ..publicationId = publicationId
        ..url = url
        ..mediaType = mediaType
        ..adDomain = adDomain
        ..adPartner = adPartner
        ..adContent = adContent
        ..adCategory = adCategory
        ..adLocation = adLocation
        ..adConsent = adConsent)
      .build();
}

News buildNewsItem(
    {String id = id,
    String accessibilityText = accessibilityText,
    String date = date,
    String description = description,
    String title = title,
    List<Link> contentLinks = const [],
    List<Link> imageLinks = const []}) {
  return (NewsBuilder()
        ..id = id
        ..accessibilityText = accessibilityText
        ..date = date
        ..description = description
        ..title = title
        ..contentLinks = ListBuilder(contentLinks)
        ..imageLinks = ListBuilder(imageLinks))
      .build();
}

Video buildVideoItem(
    {String id = id,
    String accessibilityText = accessibilityText,
    String data = date,
    String description = description,
    String title = title,
    List<Link> contentLinks = const [],
    List<Link> imageLinks = const [],
    List<VideoLink> videoLinks = const []}) {
  return (VideoBuilder()
        ..id = id
        ..accessibilityText = accessibilityText
        ..date = date
        ..description = description
        ..title = title
        ..contentLinks = ListBuilder(contentLinks)
        ..imageLinks = ListBuilder(imageLinks)
        ..videoLinks = ListBuilder(videoLinks))
      .build();
}

Team buildTeamItem(
    {String id = id,
    String name = name,
    String logoUrl = logoUrl,
    String countryShort = countryShort,
    List<String> competitionIds = const [],
    bool canSelectAsFavourite = canSelectAsFavourite}) {
  return (TeamBuilder()
        ..id = id
        ..name = name
        ..logoUrl = logoUrl
        ..countryShort = countryShort
        ..competitionIds = ListBuilder(competitionIds)
        ..canSelectAsFavourite = canSelectAsFavourite)
      .build();
}

Competition buildCompetition(
    {String id = id,
    String country = country,
    String countryShort = countryShort,
    String label = label,
    int position = position,
    String accessibilityText = accessibilityText,
    String defaultPhase = defaultPhase,
    bool canSelectFavourites = canSelectAsFavourite,
    List<Phase> phases = const [],
    bool hasRanking = hasRanking,
    bool sporzaFeatured = sporzaFeatured,
    bool additionInfo = additionalInfo}) {
  return (CompetitionBuilder()
        ..id = id
        ..country = country
        ..countryShort = countryShort
        ..label = label
        ..position = position
        ..accessibilityText = accessibilityText
        ..defaultPhase = defaultPhase
        ..canSelectFavourites = canSelectFavourites
        ..phases = ListBuilder(phases)
        ..hasRanking = hasRanking
        ..sporzaFeatured = sporzaFeatured
        ..additionalInfo = additionalInfo)
      .build();
}

Phase buildPhase(
    {String id = id,
    String label = label,
    String labelShort = labelShort,
    String currentMatchDay = currentMatchDay,
    int currentMatchDayIndex = currentMatchDayIndex,
    List<MatchDay> matchDays = const []}) {
  return (PhaseBuilder()
        ..id = id
        ..label = label
        ..labelShort = labelShort
        ..currentMatchDay = currentMatchDay
        ..currentMatchDayIndex = currentMatchDayIndex
        ..matchDays = ListBuilder(matchDays))
      .build();
}

MatchDay buildMatchDay(
    {String id = id,
    String name = name,
    String accessibilityText = accessibilityText,
    List<Match> matches = const []}) {
  return (MatchDayBuilder()
        ..id = id
        ..name = name
        ..accessibilityText = accessibilityText
        ..matches = ListBuilder(matches))
      .build();
}

Match buildMatch(
  Team homeTeam,
  Team awayTeam, {
  String id = id,
  String startTime = startTime,
  String status = status,
  int homeScore = homeScore,
  int awayScore = awayScore,
  String statusName = statusName,
  String statusLabel = statusLabel,
  String accessibilityText = accessibilityText,
  bool isKnockout = isKnockout,
}) {
  return (MatchBuilder()
        ..id = id
        ..homeTeam = homeTeam.toBuilder()
        ..awayTeam = awayTeam.toBuilder()
        ..startTime = startTime
        ..status = status
        ..homeScore = homeScore
        ..awayScore = awayScore
        ..statusName = statusName
        ..statusLabel = statusLabel
        ..accessibilityText = accessibilityText
        ..isKnockout = isKnockout)
      .build();
}
