import 'package:built_collection/built_collection.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:service_layer_spv/src/models/common/common.dart';

const int rank = 10;
const int nrOfMatches = 20;
const int points = 30;
const int position = 40;
const int currentMatchDayIndex = 50;
const int homeScore = 60;
const int awayScore = 70;
const int spectators = 80;
const int timeStamp = 90;

const String id = "id";
const String accessibilityText = "accessibilityText";
const String country = "country";
const String date = "date";
const String description = "description";
const String title = "title";
const String name = "name";
const String label = "label";
const String rel = "rel";
const String defaultPhase = "defaultPhase";
const String url = "http://www.sporza.be/";
const String publicationId = "pubId";
const String labelShort = "labelShort";
const String currentMatchDay = "currentMatchDay";
const String adDomain = "adDomain";
const String adPartner = "adPartner";
const String adContent = "adContent";
const String adCategory = "adCategory";
const String adLocation = "adLocation";
const String adConsent = "adConsent";
const String logoUrl = "http://www.sporza.be/logoUrl.png";
const String countryShort = "countryShort";
const String startTime = "startTime";
const String statusName = "status name";
const String statusLabel = "status label";
const String homeTeamName = "homeTeam";
const String awayTeamName = "awayTeam";
const String iconUrl = "http://www.sporza.be/iconUrl.png";
const String stadium = "stadium";
const String referee = "referee";
const String knockOutEnd = "knockOutEnd";
const String statusDay = "statusDay";
const String statusDate = "statusDate";
const String defaultEventType = "GOAL";
const String eventTime = "eventTime";
const String text = "text";
const String firstName = "firstName";
const String lastName = "lastName";
const String shortName = "shortName";
const String pebblePhoneUrl = "http://www.sporza.be/phone/advertisment";
const String pebbleTabletUrl = "http://www.sporza.be/tablet/advertisment";
const String thumbnailUrl = "http://www.sporza.be/thumbnail.png";

const bool isKnockout = true;
const bool canSelectAsFavourite = true;
const bool hasRanking = true;
const bool sporzaFeatured = true;
const bool additionalInfo = true;
const bool isFavourite = true;
const bool paymentNecessary = true;
const bool userHasPaid = true;

const MediaType mediaType = MediaType.VRT;
const MatchStatus matchStatus = MatchStatus.END;
const EventOwningTeam defaultEventOwningTeam = EventOwningTeam.HOME;
const BannerFormat bannerFormat = BannerFormat.IMU;

final Team homeTeam = buildTeam(id: "${homeTeamName}_$id", name: homeTeamName, logoUrl: "${url}_$homeTeamName");
final Team awayTeam = buildTeam(id: "${awayTeamName}_$id", name: awayTeamName, logoUrl: "${url}_$awayTeamName");

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

Team buildTeam(
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

Ranking buildRanking(Team team,
    {final String id = id,
    final int rank = rank,
    final int nrOfMatches = nrOfMatches,
    final int points = points,
    final String accessibilityText = accessibilityText}) {
  return (RankingBuilder()
        ..id = id
        ..rank = rank
        ..team = team.toBuilder()
        ..nrOfMatches = nrOfMatches
        ..points = points
        ..accessibilityText = accessibilityText)
      .build();
}

Phase buildPhase(
    {String id = id,
    String label = label,
    String labelShort = labelShort,
    String currentMatchDay = currentMatchDay,
    int currentMatchDayIndex = currentMatchDayIndex,
    List<MatchDay> matchDays = const [],
    List<Ranking> rankings = const []}) {
  return (PhaseBuilder()
        ..id = id
        ..label = label
        ..labelShort = labelShort
        ..currentMatchDay = currentMatchDay
        ..currentMatchDayIndex = currentMatchDayIndex
        ..ranking = ListBuilder(rankings)
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
  MatchStatus status = matchStatus,
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

MatchDetail buildMatchDetail(
  Team homeTeam,
  Team awayTeam, {
  String competitionLabel = label,
  String phaseLabel = label,
  String matchDayName = name,
  String id = id,
  String startTime = startTime,
  String statusDate = statusDate,
  MatchStatus status = matchStatus,
  String statusDay = statusDay,
  int homeScore = homeScore,
  int awayScore = awayScore,
  String statusName = statusName,
  String statusLabel = statusLabel,
  String accessibilityText = accessibilityText,
  bool isKnockout = isKnockout,
  String knockOutEnd = knockOutEnd,
  String stadium = stadium,
  String referee = referee,
  int spectators = spectators,
  List<MatchEvent> matchEvents = const [],
}) =>
    (MatchDetailBuilder()
          ..id = id
          ..competition = (MatchDetailCompetitionBuilder()..label = competitionLabel)
          ..phase = (MatchDetailPhaseBuilder()..label = phaseLabel)
          ..matchDay = (MatchDetailMatchDayBuilder()..name = matchDayName)
          ..homeTeam = homeTeam.toBuilder()
          ..awayTeam = awayTeam.toBuilder()
          ..startTime = startTime
          ..status = status
          ..statusDay = statusDay
          ..homeScore = homeScore
          ..awayScore = awayScore
          ..statusName = statusName
          ..statusDate = statusDate
          ..statusLabel = statusLabel
          ..accessibilityText = accessibilityText
          ..isKnockout = isKnockout
          ..knockoutEnd = knockOutEnd
          ..eventList = ListBuilder(matchEvents)
          ..stadium = stadium
          ..referee = referee
          ..spectators = spectators)
        .build();

MatchEvent buildMatchEvent({
  String eventType = defaultEventType,
  String id = id,
  String eventTime = eventTime,
  int timeStamp = timeStamp,
  String title = title,
  String text = text,
  String accessibilityText = accessibilityText,
  int homeScore = homeScore,
  EventOwningTeam eventOwningTeam = defaultEventOwningTeam,
  int awayScore = awayScore,
  Person person,
  Person subPerson,
  Banner banner,
  Media media,
  List<String> labels = const [],
}) =>
    (MatchEventBuilder()
          ..id = id
          ..eventType = eventType
          ..eventTime = eventTime
          ..timeStamp = timeStamp
          ..eventOwningTeam = eventOwningTeam
          ..title = title
          ..text = text
          ..accessibilityText = accessibilityText
          ..homeScore = homeScore
          ..awayScore = awayScore
          ..person = person?.toBuilder()
          ..subPerson = subPerson?.toBuilder()
          ..banner = banner?.toBuilder()
          ..labels = ListBuilder(labels)
          ..media = media?.toBuilder())
        .build();

Person buildPerson(
        {String id = id, String lastName = lastName, String firstName = firstName, String shortName = shortName}) =>
    (PersonBuilder()
          ..id = id
          ..lastName = lastName
          ..firstName = firstName
          ..shortName = shortName)
        .build();

Banner buildBanner(
        {String id = id,
        BannerFormat format = bannerFormat,
        String pebblePhoneUrl = pebblePhoneUrl,
        String pebbleTabletUrl = pebbleTabletUrl}) =>
    (BannerBuilder()
          ..id = id
          ..format = format
          ..pebblePhoneUrl = pebblePhoneUrl
          ..pebbleTabletUrl = pebbleTabletUrl)
        .build();

Media buildMedia(
        {String id = id,
        MediaType mediaType = mediaType,
        String thumbnailUrl = thumbnailUrl,
        String publicationId = publicationId,
        String adContent = adContent,
        String adLocation = adLocation,
        String adCategory = adCategory,
        String adConsent = adConsent,
        bool paymentNecessary = paymentNecessary,
        bool userHasPaid = userHasPaid,
        String url = url}) =>
    (MediaBuilder()
          ..id = id
          ..mediaType = mediaType
          ..thumbnailUrl = thumbnailUrl
          ..publicationId = publicationId
          ..publicationId = publicationId
          ..adContent = adContent
          ..adLocation = adLocation
          ..adCategory = adCategory
          ..adConsent = adConsent
          ..paymentNecessary = paymentNecessary
          ..userHasPaid = userHasPaid
          ..url = url)
        .build();

Menu buildMenu({List<Competition> favs = const [], List<Competition> nonFavs = const []}) => (MenuBuilder()
      ..favouriteCompetitions = ListBuilder(favs)
      ..nonFavouriteCompetitions = ListBuilder(nonFavs))
    .build();
