import 'package:rxdart/rxdart.dart';
import 'package:spv/bloc/news_bloc.dart';
import 'package:spv/models/response.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import '../utils/mocks/mocks.dart';
import '../utils/model_builder.dart';

void main() {
  MockNewsUseCase mockNewsUseCase = MockNewsUseCase();
  NewsBloc newsBloc = NewsBloc(mockNewsUseCase);

  group("news bloc", () {
    test("some test", () async {
      when(mockNewsUseCase.news).thenAnswer((_) => Observable.just(Response.nwSuccess(List.of([buildNewsItem()]))));
      var a = await newsBloc.news.toList();
      print(a);
    });

    test("some other test", () async {
      when(mockNewsUseCase.news).thenAnswer((_) => Observable.just(Response.nwError(Error())));
      var a = await newsBloc.news.toList();
      print(a);
    });
  });
}
