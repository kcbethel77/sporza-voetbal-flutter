import 'package:spv/models/model_mapper.dart';
import 'package:test/test.dart';

import '../utils/model_builder.dart';

void main() {
  group("News", () {
    test("map list of network news to news view model", () {
      Mapper.mapListOfNewToViewModels(List.of([buildNewsItem()]));
    });
  });
}
