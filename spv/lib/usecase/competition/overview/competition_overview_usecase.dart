import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:spv/models/response.dart';
import 'package:spv/usecase/list_use_case.dart';

class CompetitionOverviewUseCase extends ListUseCase<Competition> {
  CompetitionOverviewUseCase(Cache cache, SporzaSoccerDataSource network) : super(cache, network);

  @override
  DatasourceType<Competition> get dataSourceType => competitionDataSourceType;

  Observable<Response<List<Competition>>> get competitions => mergeNetworkAndDb;

  Observable<Response<List<Competition>>> get sporzaFavoriteCompetitions {
    return competitions.map((response) {
      if (response is Data) {
        var dataResp = response as Data<List<Competition>>;
        var sporzaFeaturedCompetitions = dataResp.value.where((competition) => competition.sporzaFeatured).toList();
        return dataResp.isNetwork
            ? Response.nwSuccess(sporzaFeaturedCompetitions)
            : Response.dbSuccess(sporzaFeaturedCompetitions);
      } else {
        return response;
      }
    });
  }
}
