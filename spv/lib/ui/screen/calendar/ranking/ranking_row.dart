import 'package:flutter/material.dart';

class RankingRow extends StatelessWidget {
  final String position;
  final String imageUrl;
  final String name;
  final String points;
  final String matchedPlayed;

  const RankingRow(this.position, this.imageUrl, this.name, this.points, this.matchedPlayed, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(position),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 32, 8),
          child: Image.network(
            imageUrl,
            height: 30,
          ),
        ),
        Expanded(child: Text(name)),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(points),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(matchedPlayed),
        ),
      ],
    );
  }
}
