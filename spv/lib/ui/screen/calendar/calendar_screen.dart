import 'package:flutter/material.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/service/bloc/bloc.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/calendar_overview_list.dart';

class CalendarScreen extends StatelessWidget {
  final CompetitionOverviewBloc competitionOverviewBloc;

  const CalendarScreen(this.competitionOverviewBloc, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: competitionOverviewBloc.calendar,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData && snapshot.data is Data<Calendar>) {
            return CalendarOverviewList(
              calendar: snapshot.data,
            );
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
