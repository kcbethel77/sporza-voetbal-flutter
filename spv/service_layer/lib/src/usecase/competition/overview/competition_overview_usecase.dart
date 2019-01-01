import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/datasource/cache/cache.dart';
import 'package:service_layer_spv/src/datasource/data_source_type.dart';
import 'package:service_layer_spv/src/datasource/soccer_datasource.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:service_layer_spv/src/usecase/list_usecase.dart';

class CompetitionOverviewUseCase extends ListUseCase<Competition> {
  SporzaSoccerDataSource _network;
  Cache _cache;

  CompetitionOverviewUseCase(this._cache, this._network);

  @override
  DatasourceType<Competition> get dataSourceType => competitionDataSourceType;

  Observable<Response<List<Competition>>> get competitions => stream();

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

  @override
  Cache get cache => _cache;

  @override
  SporzaSoccerDataSource get network => _network;
}
