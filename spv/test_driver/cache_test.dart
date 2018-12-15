import 'package:flutter_driver/flutter_driver.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:test/test.dart';


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

    test('Integration test do not run for some reason', () async {
      expect(true, false);
    });
  });
}
