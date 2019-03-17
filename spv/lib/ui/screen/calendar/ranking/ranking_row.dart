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
    return InkWell(
      onTap: () => print("Clicked ranking"),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(position),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.network(
              imageUrl,
              height: 30,
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(name),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(points),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(matchedPlayed),
            ),
          ),
        ],
      ),
    );
  }
}
