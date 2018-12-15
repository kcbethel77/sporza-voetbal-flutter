import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/response.dart';

class NewsUseCase {
  final Cache _cache;
  final SporzaSoccerDataSource _network;

  NewsUseCase(this._cache, this._network);

  Observable<List<News>> get news {
    return Observable.merge([
      _network
          .getListOfT<News>(newsDatasourceType)
          .onErrorReturnWith((_) => List())
          .doOnData((newsItems) => _cache.saveItems(newsDatasourceType, newsItems)),
      _cache.getListOfT<News>(newsDatasourceType).onErrorReturnWith((_) => List())
    ]);
  }
}
