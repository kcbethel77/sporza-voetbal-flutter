import 'package:flutter/material.dart';
import 'package:spv/model/view/match.dart' as view;
import 'package:spv/ui/screen/calendar/matchday/match_info.dart';
import 'package:spv/ui/screen/calendar/matchday/team_logo.dart';

class MatchItemRow extends StatelessWidget {
  final view.Match match;
  final bool isEven;

  const MatchItemRow({Key key, @required this.match, @required this.isEven}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isEven ? Colors.white : Colors.grey[100],
      child: Container(
        height: 100,
        child: InkWell(
          onTap: () => print("Clikcked a match item"),
          child: Row(
            children: <Widget>[
              Expanded(flex: 1, child: TeamLogo(team: match.homeTeam)),
              Expanded(flex: 1, child: MatchInfo(info: match.info)),
              Expanded(flex: 1, child: TeamLogo(team: match.awayTeam))
            ],
          ),
        ),
      ),
    );
  }
}
