import 'package:spv/datasource/fetch_type.dart';
import 'package:spv/datasource/network/network.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/video.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import '../../utils/data_constants.dart';
import '../../utils/mocks/mocks.dart';

void main() {
  final MockHttp mockHttp = MockHttp();
  final MockResponse mockResponse = MockResponse();
  final Network nw = NetworkImpl(mockHttp);

  when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
  when(mockResponse.body).thenReturn("[]");

  group("a network implementation", () {
    test("has injected headers on client", () {
      nw.getT(newsFetchType).listen((resp) {
        expect(verify(mockHttp.get(any, headers: captureAnyNamed('headers'))).captured.single,
            equals({"Accept": "application/be.vrt.infostrada.v7+json", "X-Device-Id": "android"}));
      });
    });

    test("can parse a news items JSON", () {
      when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
      when(mockResponse.body).thenReturn(rawNewsJson);

      nw.getT<News>(newsFetchType).listen((resp) {
        expect(resp is List<News>, isTrue);
        expect(resp.length, 2);
      });
    });

    test("can pase a video items JSON" ,() {
      when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
      when(mockResponse.body).thenReturn(rawVideosJson);

      nw.getT<Video>(videoFetchType).listen((resp) {
        expect(resp is List<Video>, isTrue);
        expect(resp.length, 2);
      });
    });
  });
}
