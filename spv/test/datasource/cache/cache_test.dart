import 'package:spv/datasource/cache/cache.dart';
import 'package:test/test.dart';

import '../../model_builder.dart';

void main() {
  final Cache cache = CacheImpl(path: "json");

  group("a cache layer", () {
    test("should successfully cache news json", () async {
      expect(await cache.saveNewsItems(buildNewsItems()), true);
    });

    test("should successfully fetch the cached news json", () async {
      var savedNewsItems = buildNewsItems();
      await cache.saveNewsItems(savedNewsItems);

      cache.news.listen(expectAsync1((actual) {
        expect(actual, savedNewsItems);
      }));
    });
  });
}
