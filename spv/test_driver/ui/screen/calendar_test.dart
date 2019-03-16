import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Calendar Screen', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect(timeoutMultiplier: 4);
    });

    tearDownAll(() async {
      driver.close();
    });

    test("Current match day", () async {
      await driver.waitFor(find.text("current match day"));
    });

    test("Not current match day should be visible", () async{
      await driver.waitFor(find.text("not current match day"));
    });
  });
}
