import 'package:spv/models/model_mapper.dart';
import 'package:test/test.dart';

import '../utils/model_builder.dart';

void main() {
  group("News", () {
    var newsViewModel = Mapper.mapNewsToViewModel(buildNewsItem());

    test("has correct id", () {
      expect(newsViewModel.id, id);
    });

    test("has correct accessibility text", () {
      expect(newsViewModel.accessibility, accessibilityText);
    });

    test("has correct contentUrl", () {
      expect(newsViewModel.contentUrl, "");
    });

    test("has correct title", () {
      expect(newsViewModel.title, title);
    });

    test("has correct description", () {
      expect(newsViewModel.description, description);
    });

    test("has coorrect image url", () {
      expect(newsViewModel.imageUrl, "");
    });

    test("has correct date", () {
      expect(newsViewModel.date, date);
    });
  });

  group("News has links", () {
    var newsViewModel = Mapper.mapNewsToViewModel(buildNewsItem(contentLinks: [
      buildLink(url: "url1"),
      buildLink(url: "url2"),
    ], imageLinks: [
      buildLink(url: "url3"),
      buildLink(url: "url4"),
    ]));

    test("has correct contentUrl", () {
      expect(newsViewModel.contentUrl, "url1");
    });

    test("has correct imageurl", () {
      expect(newsViewModel.imageUrl, "url3");
    });
  });
}
