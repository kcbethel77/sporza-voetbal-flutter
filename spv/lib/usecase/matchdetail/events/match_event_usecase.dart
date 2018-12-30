import 'package:rxdart/rxdart.dart';
import 'package:spv/models/response.dart';
import 'package:spv/usecase/usecase_mixin.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/network_models.dart';

class MatchEventUseCase with UseCase<MatchDetail> {
  final Cache _cache;
  final SporzaSoccerDataSource _network;
  final DatasourceType _dataSourceType;

  MatchEventUseCase(
      final String _matchId, final this._cache, final this._network)
      : _dataSourceType = MatchDetailDataSourceType(_matchId);

  @override
  Cache get cache => _cache;

  @override
  DatasourceType get dataSourceType => _dataSourceType;

  @override
  SporzaSoccerDataSource get network => _network;

  Observable<Response<MatchDetail>> get matchDetailInfoWithEvents => stream();
}
