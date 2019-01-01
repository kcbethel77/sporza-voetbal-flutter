import 'package:rxdart/rxdart.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

void main() {
  void printObs(Observable obs, int times) {
    for (var i = 0; i <= times; i++) {
      //print(obs.values);
      obs.listen((j) {
        print("$i: $j");
      });
    }
  }

  group("rxdart", () {
    test("sharing is caring", () async {
      final observable = Observable.fromIterable([1, 2, 3]).publishValue();
      var sub = observable.listen(print);

      printObs(observable, 20);
    });
  });
}
