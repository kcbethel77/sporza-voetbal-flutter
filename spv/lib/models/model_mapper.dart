import 'package:spv/models/network/network_models.dart' as network;
import 'package:spv/models/view/view_models.dart' as view;

class Mapper {
  static List<view.News> mapListOfNewsToViewModels(List<network.News> news) =>
      _mapListOfTtoR<network.News, view.News>(news, mapNewsToViewModel);

  static view.News mapNewsToViewModel(network.News news) {
    return (view.NewsBuilder()
          ..id = news.id
          ..accessibility = news.accessibilityText
          ..contentUrl = news.contentLinks.isNotEmpty ? news.contentLinks.first?.url : ""
          ..title = news.title
          ..description = news.description
          ..imageUrl = news.imageLinks.isNotEmpty ? news.imageLinks.first?.url : ""
          ..date = news.date)
        .build();
  }

  static List<R> _mapListOfTtoR<T, R>(List<T> list, [R mapFunc(T t)]) => list.map(mapFunc).toList();
}
