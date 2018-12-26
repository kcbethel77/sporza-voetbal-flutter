import 'package:spv/models/response.dart';
import 'package:test/test.dart';
import 'package:spv/bloc/view_model_mappable_mixin.dart';

int length(final String str) => str.length;

int lengthTwoArgs(final String str, final int extra) => str.length + extra;

int lengthThreeArgs(final String str, final int extra, final int someMoreExtra) => str.length + extra + someMoreExtra;

class StubViewModelMappable with ViewModelMappable {}

void main() {
  var viewModelMappable = StubViewModelMappable();

  test("1 argument", () {
    var viewModel = viewModelMappable.mapToViewModels(Response.nwSuccess(""), length);
    expect(viewModel, isNotNull);
  });

  test("2 arguments", () {
    var viewModel = viewModelMappable.mapToViewModels(Response.nwSuccess(""), lengthTwoArgs, extraParam1: 3);
    expect(viewModel, isNotNull);
  });

  test("3 arguments", () {
    var viewModel = viewModelMappable.mapToViewModels(Response.nwSuccess(""), lengthThreeArgs, extraParam1: 3, extraParam2: 5);
    expect(viewModel, isNotNull);
  });
}
