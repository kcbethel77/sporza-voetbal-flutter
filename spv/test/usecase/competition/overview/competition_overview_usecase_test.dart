import 'package:spv/models/response.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/usecase/use_case.dart';
import 'package:spv/models/network/network_models.dart';

import '../../../utils/spv_test_utils.dart';

void main() {
  //We will only use the network for this test
  var cache = MockCache();
  when(cache.getListOfT<Competition>(competitionDataSourceType)).thenAnswer((_) => Observable.empty());

  var network = MockSporzaSoccerDataSource();
  CompetitionOverviewUseCase competitionOverviewUseCase = CompetitionOverviewUseCase(cache, network);

  group("competition use case", () {
    test("should only return the sporza featured", () async {
      Observable<List<Competition>> competitionStream() => Observable.just([
            buildCompetition(label: "competition 1", sporzaFeatured: true),
            buildCompetition(label: "competition 2", sporzaFeatured: false),
            buildCompetition(label: "competition 3", sporzaFeatured: true),
            buildCompetition(label: "competition 4", sporzaFeatured: false),
          ]);
      when(network.getListOfT<Competition>(competitionDataSourceType)).thenAnswer((_) => competitionStream());

      var emissions = await competitionOverviewUseCase.sporzaFavoriteCompetitions.toList();

      expect(emissions.length, 1);
      expect((emissions.first as Data<List<Competition>>).value.length, 2);
    });
  });
}
