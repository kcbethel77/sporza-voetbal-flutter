import 'package:service_layer_spv/src/models/response.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/datasource/data_source_type.dart';
import 'package:service_layer_spv/src/usecase/usecase.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';

import '../../../utils/index.dart';

Observable<List<Competition>> get competitionStream => Observable.just([
      buildCompetition(label: "competition 1", sporzaFeatured: true),
      buildCompetition(label: "competition 2", sporzaFeatured: false),
      buildCompetition(label: "competition 3", sporzaFeatured: true),
      buildCompetition(label: "competition 4", sporzaFeatured: false),
    ]);

void main() {
  //We will only use the network for this test
  var cache = MockCache();
  when(cache.getListOfT<Competition>(competitionDataSourceType)).thenAnswer((_) => Observable.empty());

  var network = MockSporzaSoccerDataSource();
  when(network.getListOfT<Competition>(competitionDataSourceType)).thenAnswer((_) => competitionStream);

  CompetitionOverviewUseCase competitionOverviewUseCase = CompetitionOverviewUseCase(cache, network);

  group("competition use case", () {
    test("should only return the sporza featured", () async {
      var emissions = await competitionOverviewUseCase.sporzaFavoriteCompetitions.toList();

      expect(emissions.length, 1);
      expect((emissions.first as Data<List<Competition>>).value.length, 2);
      expect((emissions.first as Data<List<Competition>>).value.elementAt(0).label, "competition 1");
      expect((emissions.first as Data<List<Competition>>).value.elementAt(1).label, "competition 3");
    });

    test("should only return the non sporza featured competitions", () async {
      var emissions = await competitionOverviewUseCase.nonSporzaFavouriteCompetitions.toList();

      expect(emissions.length, 1);
      expect((emissions.first as Data<List<Competition>>).value.length, 2);
      expect((emissions.first as Data<List<Competition>>).value.elementAt(0).label, "competition 2");
      expect((emissions.first as Data<List<Competition>>).value.elementAt(1).label, "competition 4");
    });
  });
}