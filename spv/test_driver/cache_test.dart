import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';


void main() {
  group('Caching', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect(timeoutMultiplier: 4);
    });

    tearDownAll(() async {
      driver?.close();
    });

    test("this is just a test to see if the it test run", () async {
      expect(true, true);
    });
  });
}
