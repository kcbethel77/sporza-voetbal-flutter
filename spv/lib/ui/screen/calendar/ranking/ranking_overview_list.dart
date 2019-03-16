import 'package:flutter/material.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/ranking/ranking_row.dart';
import 'package:spv/ui/screen/calendar/ranking/ranking_phase.dart' as RankingPhaseWidget;

class RankingOverviewList extends StatelessWidget {
  final Data<Ranking> ranking;
  final ScrollController _scrollController = ScrollController();

  RankingOverviewList(this.ranking, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> rows = <dynamic>[];
    List<RankingPhase> phases = ranking.value.phases.toList();
    phases.forEach((phase) {
      rows.add(phase);
      rows.addAll(phase.rankings);
    });

    return ListView.builder(
      controller: _scrollController,
      itemBuilder: (context, index) {
        var row = rows[index];

        if (row is Rank) {
          return RankingRow("${row.position}", row.iconUrl, row.name, "${row.points}", "${row.matchedPlayed}");
        }

        if (row is RankingPhase) {
          return RankingPhaseWidget.RankingPhase(row.name);
        }
      },
      itemCount: rows.length,
    );
  }
}
