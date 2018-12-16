import 'package:rxdart/rxdart.dart';
import 'package:spv/models/model_mapper.dart';
import 'package:spv/models/network/network_models.dart' as network;
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart' as view;
import 'package:spv/usecase/use_case.dart';

class NewsBloc {
  final NewsUseCase _newsUseCase;

  NewsBloc(this._newsUseCase);

  Observable<Response<List<view.News>>> get news => _newsUseCase.news.map((response) {
        if (response is Data) {
          var data = response as Data;
          var mapListOfNewToViewModels = Mapper.mapListOfNewToViewModels((data).value as List<network.News>);

          if (data.isNetwork) {
            return Response.nwSuccess(mapListOfNewToViewModels);
          } else {
            return Response.dbSuccess(mapListOfNewToViewModels);
          }
        }

        if (response is Fail) {
          var fail = response as Fail;

          if (fail.isNetwork) {
            return Response.nwError(fail.throwable);
          } else {
            return Response.dbError(fail.throwable);
          }
        }
      });
}
