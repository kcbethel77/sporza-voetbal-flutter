import 'package:flutter/material.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/matchday/match_day_row.dart';
import 'package:spv/ui/screen/calendar/matchday/match_end_spacer.dart';
import 'package:spv/ui/screen/calendar/matchday/match_item_row.dart';

class CalendarOverviewList extends StatelessWidget {
  final Data<Calendar> calendar;
  final ScrollController _scrollController = ScrollController();

  CalendarOverviewList({Key key, @required this.calendar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> rows = <dynamic>[];
    List<MatchDay> matchDays = calendar.value.phases.expand((phase) => phase.matchDays).toList();
    matchDays.forEach((matchDay) {
      rows.add(matchDay);
      rows.addAll(matchDay.matches);
      rows.add(_MatchDaySpacer());
    });

    return ListView.builder(
      controller: _scrollController,
      itemBuilder: (context, index) {
        var row = rows[index];

        if (row is MatchDay) {
          return MatchDayRow(matchDay: row.name, isCurrent: row.isCurrent);
        }

        if (row is Match) {
          return MatchItemRow(match: row, isEven: index % 2 == 0);
        }

        if (row is _MatchDaySpacer) {
          return MatchEndSpacer();
        }
      },
      itemCount: rows.length,
    );
  }

  void scrollToPosition(int index) {
    _scrollController.jumpTo(0);
  }
}

class _MatchDaySpacer {}
