import 'package:flutter_driver/flutter_driver.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/fetch_type.dart';
import 'package:test/test.dart';

import '../test/utils/model_builder.dart';

void main() {
  group('Caching', () {
    FlutterDriver driver;
    final Cache cache = CacheImpl();

    setUpAll(() async {
      driver = await FlutterDriver.connect(timeoutMultiplier: 4);
    });

    tearDownAll(() async {
      driver?.close();
    });

    test('Simple Screenshot', () async {
      cache.saveItems(newsDatasourceType, buildNewsItems());
    });
  });
}
