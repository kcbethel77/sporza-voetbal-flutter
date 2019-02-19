import 'package:built_collection/built_collection.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/model/network/network_models.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/data_source_type.dart';
import 'package:spv/service/datasource/soccer_datasource.dart';
import 'package:spv/service/datasource/user/user_preferences.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/list_usecase.dart';

class CompetitionsUseCase extends ListUseCase<Competition> {
  SporzaSoccerDataSource _network;
  Cache _cache;
  UserPreference _userPreferences;

  CompetitionsUseCase(this._cache, this._network, this._userPreferences);

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

  Observable<Response<Menu>> get favoriteCompetitions => competitions
      .reduce((previous, element) {
        if (previous is Fail<List<Competition>>) {
          return previous.isNetwork ? Response.nwError(previous.throwable) : Response.dbError(previous.throwable);
        }

        final previousList = (previous as Data<List<Competition>>).value;
        final newList = (element as Data<List<Competition>>).value;

        return Response.nwSuccess((previousList + newList).toSet().toList());
      })
      .asObservable()
      .map((resp) => resp is Fail ? <Competition>[] : (resp as Data<List<Competition>>).value)
      .zipWith(_userPreferences.favoriteCompetitions, (allCompetitions, List favoriteCompetitionIds) {
        if (allCompetitions.length == 0) {
          return Response.nwError(StateError("no competitions were found"));
        }

        var sporzaFavs = allCompetitions.where((comp) => comp.sporzaFeatured).toList();
        var myFavs = allCompetitions.where((comp) => favoriteCompetitionIds.contains(comp.id)).toList();
        var combinedFavs = (sporzaFavs + myFavs).toSet().toList();

        //remove all previous favorites from original list
        allCompetitions.removeWhere((comp) => combinedFavs.contains(comp));

        return Response.nwSuccess((MenuBuilder()
              ..favouriteCompetitions = ListBuilder(combinedFavs)
              ..nonFavouriteCompetitions = ListBuilder(allCompetitions))
            .build());
      });

  @override
  Cache get cache => _cache;

  @override
  SporzaSoccerDataSource get network => _network;
}
