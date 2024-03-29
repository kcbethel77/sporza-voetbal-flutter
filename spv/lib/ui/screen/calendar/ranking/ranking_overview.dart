import 'package:flutter/material.dart';
import 'package:rxdart/src/observables/observable.dart';
import 'package:spv/model/view/ranking.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/ui/screen/calendar/ranking/ranking_overview_list.dart';

class RankingOverview extends StatelessWidget {
  final Observable<Response<Ranking>> ranking;

  const RankingOverview(this.ranking, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: ranking,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data is Data<Ranking>) {
          return RankingOverviewList(snapshot.data);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
