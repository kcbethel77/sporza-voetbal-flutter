import 'package:rxdart/rxdart.dart';
import 'package:spv/models/model_mapper.dart';
import 'package:spv/bloc/view_model_mappable_mixin.dart';
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/usecase/use_case.dart';

class NewsBloc with ViewModelListMappable {
  final NewsUseCase _newsUseCase;

  NewsBloc(this._newsUseCase);

  Observable<Response<List<News>>> get news =>
      _newsUseCase.news.map((response) => mapToViewModels(response, Mapper.mapListOfNewsToViewModels));
}
