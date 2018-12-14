import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/fetch_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/video.dart';

class VideoUseCase {
  final Cache _cache;
  final SporzaSoccerDataSource _network;

  VideoUseCase(this._cache, this._network);

  Observable<List<Video>> get videos {
    return Observable.merge([
      _network
          .getT<Video>(videoDatasourceType)
          .onErrorReturnWith((_) => List())
          .doOnData((videoItems) => _cache.saveItems(videoDatasourceType, videoItems)),
      _cache.getT<Video>(videoDatasourceType).onErrorReturnWith((_) => List())
    ]);
  }
}
