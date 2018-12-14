import 'package:built_collection/built_collection.dart';
import 'package:spv/models/network/link.dart';
import 'package:spv/models/network/news.dart';

const int genAmount = 1;

const String id = "id";
const String accessibilityText = "accessibilityText";
const String date = "date";
const String description = "description";
const String title = "title";
const String rel = "rel";
const String url = "http://www.sporza.be/";

List<Link> buildLinks({int amount = genAmount}) => List.generate(amount, (index) => buildLink(id : "$id$index"));

Link buildLink({String id = id, String url = url, String rel = rel}) {
  return (LinkBuilder()
      ..id = id
      ..rel = rel
      ..url = url)
    .build();
}

List<News> buildNewsItems({int amount = genAmount}) => List.generate(amount, (index) => buildNewsItem(id: "$id$index"));

News buildNewsItem(
    {String id = id,
    String accessibilityText = accessibilityText,
    String date = date,
    String description = description,
    String title = title,
    Iterable<Link> contentLinks = const Iterable.empty(),
    Iterable<Link> imageLinks = const Iterable.empty()}) {
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
