import 'package:flutter/material.dart';
import 'package:spv/model/view/calendar.dart';
import 'package:spv/model/view/match_day.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/match_day_row.dart';
import 'package:spv/ui/screen/calendar/match_end_spacer.dart';
import 'package:spv/ui/screen/calendar/match_item_row.dart';

class CalendarOverviewList extends StatelessWidget {
  final Response<Calendar> calendar;
  final ScrollController _scrollController = ScrollController();

  CalendarOverviewList({Key key, @required this.calendar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (calendar is Data<Calendar>) {
      List<dynamic> rows = <dynamic>[];
      List<MatchDay> matchDays = (calendar as Data<Calendar>).value.phases.expand((phase) => phase.matchDays).toList();
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

    return Center(child: CircularProgressIndicator());
  }

  void scrollToPosition(int index) {
    _scrollController.jumpTo(0);
  }
}

class _MatchDaySpacer {}
