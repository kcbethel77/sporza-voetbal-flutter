import 'package:flutter/material.dart';

class RankingPhase extends StatelessWidget {
  final String rankingName;

  const RankingPhase(this.rankingName, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(rankingName),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(child: Text("W")),
            ),
            Expanded(
              flex: 1,
              child: Center(child: Text("P")),
            )
          ],
        ),
        Container(
          height: 1,
          color: Colors.grey[300],
        )
      ],
    );
  }
}
