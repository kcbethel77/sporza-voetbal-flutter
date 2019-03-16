import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:spv/ui/screen/calendar/matchday/match_day_row.dart';

void main() {
  testWidgets("snapshot of Match Day Row (not current match day)", (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(
          child: Container(
            width: 100,
            child: MatchDayRow(
              isCurrent: false,
              matchDay: "Match Day 1",
            ),
          ),
        ),
      ));

      await expectLater(find.byType(Container).first,
          matchesGoldenFile("screenshots/match_day_row_ui_test_not_current_match_day.png"));
    });
  });

  testWidgets("snapshot of Match Day Row (current match day)", (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(
          child: Container(
            width: 100,
            child: MatchDayRow(
              isCurrent: true,
              matchDay: "Match Day 2",
            ),
          ),
        ),
      ));

      await expectLater(
          find.byType(Container).first, matchesGoldenFile("screenshots/match_day_row_ui_test_current_match_day.png"));
    });
  });
}
