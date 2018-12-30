import 'package:spv/usecase/usecase_mixin.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:spv/models/response.dart';

class RankingUseCase with UseCase<Competition> {
  final Cache _cache;
  final SporzaSoccerDataSource _network;
  final DatasourceType _dataSourceType;

  RankingUseCase(final String _competitionId, final this._cache, final this._network)
      : _dataSourceType = RankingForCompetitionDataSourceType(_competitionId);

  Observable<Response<Competition>> get ranking => stream();

  @override
  Cache get cache => _cache;

  @override
  DatasourceType get dataSourceType => _dataSourceType;

  @override
  SporzaSoccerDataSource get network => _network;
}
