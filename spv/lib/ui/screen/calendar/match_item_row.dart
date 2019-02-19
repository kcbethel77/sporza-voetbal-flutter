import 'package:flutter/material.dart';
import 'package:spv/model/view/match.dart';
import 'package:spv/ui/calendar/team_logo.dart';

class MatchItemRow extends StatelessWidget {
  final Match match;
  final bool isEven;

  const MatchItemRow({Key key, @required this.match, @required this.isEven}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("clicked"),
      child: Container(
        color: isEven ? Colors.white : Colors.grey[100],
        height: 100,
        child: Row(
          children: <Widget>[
            Expanded(flex: 1, child: TeamLogo(team: match.homeTeam)),
            Expanded(flex: 1, child: Center(child: Text(match.status.name))),
            Expanded(flex: 1, child: TeamLogo(team: match.awayTeam))
          ],
        ),
      ),
    );
  }
}
