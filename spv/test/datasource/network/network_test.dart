import 'package:spv/datasource/network/network.dart';
import 'package:spv/models/network/news.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../data_constants.dart';

class MockHttp extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

void main() {
  final MockHttp mockHttp = MockHttp();
  final MockResponse mockResponse = MockResponse();
  final Network nw = NetworkImpl(mockHttp);

  when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
  when(mockResponse.body).thenReturn("[]");

  group("a network implementation", () {
    test("has injected headers on client", () {
      nw.news.listen((resp) {
        expect(verify(mockHttp.get(any, headers: captureAnyNamed('headers'))).captured.single,
            equals({"Accept": "application/be.vrt.infostrada.v7+json", "X-Device-Id": "android"}));
      });
    });

    test("can fetch a news stream", () {
      when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
      when(mockResponse.body).thenReturn(rawNewsJson);

      nw.news.listen((resp) {
        expect(resp is List<News>, isTrue);
        expect(resp.length, 2);
      });
    });
  });
}
