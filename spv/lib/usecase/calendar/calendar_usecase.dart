import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:spv/models/response.dart';
import 'package:spv/usecase/use_case_mixin.dart';

class CalendarForCompetitionUseCase with UseCase {
  final Cache _cache;
  final SporzaSoccerDataSource _network;
  final DatasourceType _dataSourceType;

  CalendarForCompetitionUseCase(final String _competitionId, final this._cache, final this._network)
      : _dataSourceType = CalendarForCompetitionDataSourceType(_competitionId);

  Observable<Response<Competition>> get _nw => mapToNetworkResponse(
      _network.getT<Competition>(_dataSourceType).doOnData((item) => _cache.saveItem(_dataSourceType, item)));

  Observable<Response<Competition>> get _db => mapToCacheResponse(_cache.getT(_dataSourceType));

  Observable<Response<Competition>> get _mergedCompetitions => merge(_nw, _db);

  Observable<Response<Competition>> get calendarForCompetition => _mergedCompetitions;
}
