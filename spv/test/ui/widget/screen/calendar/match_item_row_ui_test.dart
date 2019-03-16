import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:spv/model/common/common_models.dart';
import 'package:spv/ui/screen/calendar/matchday/match_item_row.dart';

import '../../../../utils/index.dart';

Future<void> _snapShotOfMatchStatus(WidgetTester tester, MatchStatus matchStatus) async {
  await provideMockedNetworkImages(() async {
    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: Material(
        child: MatchItemRow(
          isEven: true,
          match: buildMatchViewModel(
            buildHeadingInfoViewModel(matchStatus),
            buildTeamViewModel(),
            buildTeamViewModel(),
          ),
        ),
      ),
    ));

    await expectLater(
        find.byType(MatchItemRow), matchesGoldenFile("screenshots/match_item_row_matchstatus_${matchStatus}.png"));
  });
}

void main() {
  testWidgets("Snapshot of Match Item Row", (WidgetTester tester) async {
    await _snapShotOfMatchStatus(tester, MatchStatus.END);
    await _snapShotOfMatchStatus(tester, MatchStatus.SUSPENDED);
    await _snapShotOfMatchStatus(tester, MatchStatus.SUSPENDED_INDEFINITELY);
    await _snapShotOfMatchStatus(tester, MatchStatus.NOT_STARTED);
    await _snapShotOfMatchStatus(tester, MatchStatus.AFTER_TODAY);
    await _snapShotOfMatchStatus(tester, MatchStatus.CANCELLED);
    await _snapShotOfMatchStatus(tester, MatchStatus.LIVE);
    await _snapShotOfMatchStatus(tester, MatchStatus.POSTPONED);
  });
}
