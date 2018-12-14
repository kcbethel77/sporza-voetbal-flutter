import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/fetch_type.dart';
import 'package:test/test.dart';

import '../../utils/model_builder.dart';

void main() {
  final Cache cache = CacheImpl(path: "json");

  group("a cache layer", () {
    test("should successfully cache news json", () async {
      expect(await cache.saveItems(newsDatasourceType, buildNewsItems()), true);
    });

    test("should successfully fetch the cached news json", () async {
      var savedNewsItems = buildNewsItems();
      await cache.saveItems(newsDatasourceType, savedNewsItems);

      cache.getT(newsDatasourceType).listen(expectAsync1((actual) {
        expect(actual, savedNewsItems);
      }));
    });
  });
}
