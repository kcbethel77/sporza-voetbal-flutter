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
      expect(newsViewModel.contentUrl, null);
    });

    test("has correct title", () {
      expect(newsViewModel.title, title);
    });

    test("has correct description", () {
      expect(newsViewModel.description, description);
    });

    test("has coorrect image url", () {
      expect(newsViewModel.imageUrl, null);
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

  group("Video", () {
    var videoViewModel = Mapper.mapVideoToViewModel(buildVideoItem());

    test("has correct id", () {
      expect(videoViewModel.id, id);
    });

    test("has correct accessibility text", () {
      expect(videoViewModel.accessibility, accessibilityText);
    });

    test("has correct title", () {
      expect(videoViewModel.title, title);
    });

    test("has correct date", () {
      expect(videoViewModel.date, date);
    });

    test("has correct content url", () {
      expect(videoViewModel.contentUrl, null);
    });

    test("has correct image url", () {
      expect(videoViewModel.imageUrl, null);
    });

    test("has correct adDomain", () {
      expect(videoViewModel.adDomain, null);
    });

    test("has correct adPartner", () {
      expect(videoViewModel.adPartner, null);
    });

    test("has correct adContent", () {
      expect(videoViewModel.adContent, null);
    });

    test("has correct adCategory", () {
      expect(videoViewModel.adCategory, null);
    });

    test("has correct adLocation", () {
      expect(videoViewModel.adLocation, null);
    });

    test("has correct adConsent", () {
      expect(videoViewModel.adConsent, null);
    });
  });

  group("Video", () {
    var videoViewModel = Mapper.mapVideoToViewModel(buildVideoItem(contentLinks: [
      buildLink(url: "url1"),
      buildLink(url: "url2"),
    ], imageLinks: [
      buildLink(url: "url3"),
      buildLink(url: "url4"),
    ], videoLinks: [
      buildVideoLink(),
    ]));

    test("has correct content url", () {
      expect(videoViewModel.contentUrl, "url1");
    });

    test("has correct image url", () {
      expect(videoViewModel.imageUrl, "url3");
    });

    test("has correct adDomain", () {
      expect(videoViewModel.adDomain, adDomain);
    });

    test("has correct adPartner", () {
      expect(videoViewModel.adPartner, adPartner);
    });

    test("has correct adContent", () {
      expect(videoViewModel.adContent, adContent);
    });

    test("has correct adCategory", () {
      expect(videoViewModel.adCategory, adCategory);
    });

    test("has correct adLocation", () {
      expect(videoViewModel.adLocation, adLocation);
    });

    test("has correct adConsent", () {
      expect(videoViewModel.adConsent, adConsent);
    });
  });
}
