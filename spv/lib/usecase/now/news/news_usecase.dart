import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/fetch_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/news.dart';

class NewsUseCase {
  final Cache _cache;
  final SporzaSoccerDataSource _network;

  NewsUseCase(this._cache, this._network);

  Observable<List<News>> get news {
    return Observable.merge([
      _network
          .getT<News>(newsDatasourceType)
          .onErrorReturnWith((_) => List())
          .doOnData((newsItems) => _cache.saveItems(newsDatasourceType, newsItems)),
      _cache.getT<News>(newsDatasourceType).onErrorReturnWith((_) => List())
    ]);
  }
}
