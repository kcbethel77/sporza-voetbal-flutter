import 'package:flutter/material.dart';
import 'package:spv/model/view/team.dart';

class TeamLogo extends StatelessWidget {
  final Team team;

  const TeamLogo({Key key, this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.network(
          team.iconUrl,
          height: 50,
        ),
        Text(team.name),
      ],
    );
  }
}
