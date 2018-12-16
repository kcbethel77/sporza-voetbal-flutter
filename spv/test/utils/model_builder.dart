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
const MediaType mediaType = MediaType.VRT;
const String adDomain = "adDomain";
const String adPartner = "adPartner";
const String adContent = "adContent";
const String adCategory = "adCategory";
const String adLocation = "adLocation";
const String adConsent = "adConsent";
const String logoUrl = "http://www.sporza.be/logoUrl.png";
const String countryShort = "countryShort";
const bool canSelectAsFavourite = true;
const bool hasRanking = true;
const bool sporzaFeatured = true;
const bool additionalInfo = true;

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
        ..hasRanking = hasRanking
        ..sporzaFeatured = sporzaFeatured
        ..additionalInfo = additionalInfo)
      .build();
}
