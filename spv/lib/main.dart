import 'package:flutter/material.dart';
import 'package:spv/ui/di/context/app_context.dart';
import 'package:spv/ui/di/context/competition_overview_context.dart';
import 'package:spv/ui/screen/calendar/match_day_and_ranking_overview_screen.dart';

void main() => runApp(SporzaSoccerApp());

class SporzaSoccerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppContext(
      child: CompetitionOverviewContext(
        child: MaterialApp(
          title: 'Sporza Voetbal',
          theme: ThemeData(
            primaryColor: Colors.black,
            accentColor: Color(0xFF84FF00),
            fontFamily: 'Ginger'
          ),
          home: MatchDayAndRankingOverviewScreen("48"),
        ),
      ),
    );
  }
}
