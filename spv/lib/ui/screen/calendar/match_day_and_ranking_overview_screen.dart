import 'package:flutter/material.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/service/bloc/bloc.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/di/context/competition_overview_context.dart';
import 'package:spv/ui/screen/calendar/matchday/match_day_overview.dart';
import 'package:spv/ui/screen/calendar/ranking/ranking_overview.dart';
import 'package:spv/ui/screen/drawer/sporza_drawer.dart';

class MatchDayAndRankingOverviewScreen extends StatelessWidget {
  final String competitionId;

  const MatchDayAndRankingOverviewScreen(this.competitionId, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CompetitionOverviewContext DI = context.inheritFromWidgetOfExactType(CompetitionOverviewContext);
    final CompetitionOverviewBloc competitionOverviewBloc = DI.fromCompetitionId(context, competitionId);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: SporzaDrawer(DI.drawerBloc(context)),
        body: TabBarView(
          children: <Widget>[
            MatchDayOverview(competitionOverviewBloc.calendar),
            RankingOverview(competitionOverviewBloc.ranking),
          ],
        ),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "WEDSTRIJDEN",
              ),
              Tab(
                text: "KLASSEMENT",
              ),
            ],
          ),
          title: StreamBuilder(
              stream: competitionOverviewBloc.calendar,
              builder: (context, snapshot) => snapshot.hasData && snapshot.data is Data<Calendar>
                  ? Text((snapshot.data as Data<Calendar>).value.competitionTitle)
                  : Text("Sporza Voetbal")),
        ),
      ),
    );
  }
}
