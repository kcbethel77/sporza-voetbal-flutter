import 'package:flutter/material.dart';

class MatchDayRow extends StatelessWidget {
  final String matchDay;
  final bool isCurrent;

  const MatchDayRow({Key key, @required this.matchDay, @required this.isCurrent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isCurrent ? Colors.lightGreenAccent[400] : Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(matchDay),
                Visibility(
                  child: Text(
                    "HUIDIGE",
                    style: TextStyle(color: Colors.white),
                  ),
                  visible: isCurrent,
                )
              ],
            ),
          ),
          Container(height: 1, color: Colors.grey[300],)
        ],
      ),
    );
  }
}
