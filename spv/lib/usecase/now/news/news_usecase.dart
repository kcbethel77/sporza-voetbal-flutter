import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart';
import 'package:spv/usecase/list_usecase.dart';
import 'package:spv/models/network/network_models.dart';

class NewsUseCase extends ListUseCase<News> {
  NewsUseCase(Cache cache, SporzaSoccerDataSource network) : super(cache, network);

  @override
  DatasourceType<News> get dataSourceType => newsDatasourceType;

  Observable<Response<List<News>>> get news => mergeNetworkAndDb;
}
