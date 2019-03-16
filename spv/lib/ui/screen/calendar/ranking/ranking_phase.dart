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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(rankingName),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("W"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("P"),
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
