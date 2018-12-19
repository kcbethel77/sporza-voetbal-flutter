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

  Observable<Response<List<Competition>>> get sporzaFavoriteCompetitions =>
      _filterCompetitionFromList((competition) => competition.sporzaFeatured);

  Observable<Response<List<Competition>>> get nonSporzaFavouriteCompetitions =>
      _filterCompetitionFromList((competition) => !competition.sporzaFeatured);

  Observable<Response<List<Competition>>> _filterCompetitionFromList(
          [bool competitionPredicate(Competition competition)]) =>
      competitions.map((response) {
        return transformResponse(response, (r) {
          var dataResp = r as Data<List<Competition>>;
          var sporzaFeaturedCompetitions = dataResp.value.where(competitionPredicate).toList();
          return dataResp.isNetwork
              ? Response.nwSuccess(sporzaFeaturedCompetitions)
              : Response.dbSuccess(sporzaFeaturedCompetitions);
        }, (err) {
          return response;
        });
      });
}