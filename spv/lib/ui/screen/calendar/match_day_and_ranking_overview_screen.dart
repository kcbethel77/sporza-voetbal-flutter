import 'package:flutter/material.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/service/bloc/bloc.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/matchday/match_day_overview.dart';
import 'package:spv/ui/screen/calendar/ranking/ranking_overview.dart';

class MatchDayAndRankingOverviewScreen extends StatelessWidget {
  final CompetitionOverviewBloc competitionOverviewBloc;

  const MatchDayAndRankingOverviewScreen(this.competitionOverviewBloc, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          MatchDayOverview(competitionOverviewBloc.calendar),
          RankingOverview(competitionOverviewBloc.ranking),
        ],
      ),
      appBar: AppBar(
        title: StreamBuilder(
            stream: competitionOverviewBloc.calendar,
            builder: (context, snapshot) => snapshot.hasData && snapshot.data is Data<Calendar>
                ? Text((snapshot.data as Data<Calendar>).value.competitionTitle)
                : Text("Sporza Voetbal")),
      ),
    );
  }
}
