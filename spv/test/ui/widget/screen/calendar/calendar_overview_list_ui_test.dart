import 'package:flutter_test/flutter_test.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/calendar_overview_list.dart';
import 'package:spv/model/common/common_models.dart' as common;
import 'package:flutter/material.dart';
import 'package:image_test_utils/image_test_utils.dart';

import '../../../../utils/index.dart';

void main() {
  testWidgets("snapshot calendar overview", (WidgetTester tester) async {
    var matchViewModel = buildMatchViewModel(
      buildHeadingInfoViewModel(common.MatchStatus.END),
      buildTeamViewModel(),
      buildTeamViewModel(),
    );
    var calendar = buildCalendarViewModel(phases: [
      buildCalendarPhaseViewModel(matchDays: [
        buildMatchDayViewModel(
          name: "current match day",
          matches: [matchViewModel],
        ),
        buildMatchDayViewModel(
          isCurrent: false,
          name: "not current match day",
          matches: [matchViewModel],
        )
      ])
    ]);

    provideMockedNetworkImages(() async {
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(
          child: CalendarOverviewList(
            calendar: Response.nwSuccess(calendar),
          ),
        ),
      ));

      await expectLater(
          find.byType(CalendarOverviewList), matchesGoldenFile("screenshots/calendar_overview_list_ui_test.png"));
    });
  });
}
