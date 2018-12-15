import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/network/network.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/team.dart';
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
      nw.getListOfT(newsDatasourceType).listen((resp) {
        expect(verify(mockHttp.get(any, headers: captureAnyNamed('headers'))).captured.single,
            equals({"Accept": "application/be.vrt.infostrada.v7+json", "X-Device-Id": "android"}));
      });
    });

    test("can parse a news items JSON", () {
      when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
      when(mockResponse.body).thenReturn(rawNewsJson);

      nw.getListOfT<News>(newsDatasourceType).listen((resp) {
        expect(resp is List<News>, isTrue);
        expect(resp.length, 2);
      });
    });

    test("can parse a video items JSON" ,() {
      when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
      when(mockResponse.body).thenReturn(rawVideosJson);

      nw.getListOfT<Video>(videoDatasourceType).listen((resp) {
        expect(resp is List<Video>, isTrue);
        expect(resp.length, 2);
      });
    });

    test("can parse a team items JSON", () {
      when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
      when(mockResponse.body).thenReturn(teamsJson);

      nw.getListOfT<Team>(teamDataSourceType).listen((resp) {
        expect(resp is List<Team>, isTrue);
        expect(resp.length, 2);
      });
    });
  });
}
