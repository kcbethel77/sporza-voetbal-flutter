import 'package:flutter/material.dart';
import 'package:rxdart/src/observables/observable.dart';
import 'package:spv/model/view/calendar.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/matchday/calendar_overview_list.dart';

class MatchDayOverview extends StatelessWidget {
  final Observable<Response<Calendar>> calendarObservable;

  const MatchDayOverview(this.calendarObservable, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StreamBuilder(
      stream: calendarObservable.asBroadcastStream(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData && snapshot.data is Data<Calendar>) {
          return CalendarOverviewList(
            calendar: snapshot.data,
          );
        }
        return Center(child: CircularProgressIndicator());
      });
}
