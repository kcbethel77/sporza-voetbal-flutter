import 'package:rxdart/rxdart.dart';
import 'package:spv/models/common/common.dart';
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
  final BehaviorSubject<bool> _isLive;

  final int notLiveRefreshInMilliSeconds;
  final int liveRefreshInMilliSeconds;

  Observable<int> get _refreshRateStream =>
      _isLive.stream.distinct().map((isLive) =>
          isLive ? liveRefreshInMilliSeconds : notLiveRefreshInMilliSeconds);

  MatchEventUseCase(
      final String _matchId,
      final this._cache,
      final this._network,
      this.liveRefreshInMilliSeconds,
      this.notLiveRefreshInMilliSeconds)
      : _dataSourceType = MatchDetailDataSourceType(_matchId),
        _isLive = BehaviorSubject(seedValue: false);

  @override
  Cache get cache => _cache;

  @override
  DatasourceType get dataSourceType => _dataSourceType;

  @override
  SporzaSoccerDataSource get network => _network;

  Observable<Response<MatchDetail>> get matchDetailInfoWithEvents =>
      _refreshRateStream
          .switchMap((refreshRate) =>
              Observable.periodic(Duration(milliseconds: refreshRate)))
          .switchMap((_) => stream(shouldRefresh: _isLive.value).doOnData((it) {
                if (it is Data<MatchDetail>) {
                  _isLive.value = MatchStatus.isLive(it.value.status);
                }
              }));
}
