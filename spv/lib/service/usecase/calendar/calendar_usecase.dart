import 'package:rxdart/rxdart.dart';
import 'package:spv/model/network/network_models.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/data_source_type.dart';
import 'package:spv/service/datasource/soccer_datasource.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/usecase_mixin.dart';

class CalendarUseCase with UseCase<Competition> {
  final Cache _cache;
  final SporzaSoccerDataSource _network;
  final DatasourceType _dataSourceType;

  CalendarUseCase(final String _competitionId, final this._cache, final this._network)
      : _dataSourceType = CalendarForCompetitionDataSourceType(_competitionId);

  Observable<Response<Competition>> get calendar => stream();

  @override
  Cache get cache => _cache;

  @override
  DatasourceType get dataSourceType => _dataSourceType;

  @override
  SporzaSoccerDataSource get network => _network;
}
