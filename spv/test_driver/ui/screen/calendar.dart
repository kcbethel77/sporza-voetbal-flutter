import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/matchday/calendar_overview_list.dart';
import 'package:spv/model/common/common_models.dart' as common;

import '../../../test/utils/index.dart';

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

void main() {
  enableFlutterDriverExtension();
  runApp(
    MaterialApp(
      home: Scaffold(
        body: CalendarOverviewList(
          calendar: Response.nwSuccess(calendar),
        ),
      ),
    ),
  );
}
