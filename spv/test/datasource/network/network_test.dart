import 'package:spv/datasource/network/network.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/response.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

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
      nw.news().listen((resp) {
        expect(verify(mockHttp.get(any, headers: captureAnyNamed('headers'))).captured.single,
            equals({"Accept": "application/be.vrt.infostrada.v7+json", "X-Device-Id": "android"}));
      });
    });

    test("can fetch a news stream", () {
      when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));
      when(mockResponse.body).thenReturn('''
        [
  {
    "id": "_content_sporza_nl_2018_12_12_bied-voor-jouw-plaatsje-in-het-voetbalteam-van-muyters-of-aster",
    "date": "2018-12-13T15:29:10.000+0000",
    "title": "Football For Life: Bied voor jouw plaats in het team van Muyters of Aster",
    "accessibilityText": "Football For Life: Bied voor jouw plaats in het team van Muyters of Aster, geplaatst om 15 uur 29.",
    "abstractText": "Wie kan het beste voetballen: een ploeg vol politici of een ploeg vol journalisten? Het antwoord kennen we op zondag 23 december voor aanvang van Club Brugge-Antwerp. Dan nemen Aster Nzeyimana en Philippe Muyters het met hun voetbalploeg tegen elkaar op.",
    "imageLinks": [
      {
        "id": "aHR0cHM6Ly9pbWFnZXMudnJ0LmJlL29yaWcvMjAxOC8xMi8xMi8yN2E0MDJiMi1mZTMyLTExZTgtYWJjYy0wMmI3Yjc2YmY0N2YuanBn",
        "rel": "permalink",
        "url": "https://images.vrt.be/orig/2018/12/12/27a402b2-fe32-11e8-abcc-02b7b76bf47f.jpg"
      }
    ],
    "contentLinks": [
      {
        "id": "aHR0cHM6Ly9zcG9yemEuYmUvbmwvMjAxOC8xMi8xMi9iaWVkLXZvb3Itam91dy1wbGFhdHNqZS1pbi1oZXQtdm9ldGJhbHRlYW0tdmFuLW11eXRlcnMtb2YtYXN0ZXIuc3B2Lw==",
        "rel": "canonical",
        "url": "https://sporza.be/nl/2018/12/12/bied-voor-jouw-plaatsje-in-het-voetbalteam-van-muyters-of-aster.spv/"
      }
    ]
  },
  {
    "id": "_content_sporza_nl_2018_12_13_cl-groepsfase-nicolas-de-brabander",
    "date": "2018-12-13T12:13:36.000+0000",
    "title": "'4 op een rij voor Real is onmogelijk, PSG, Juve en Barça topfavorieten'",
    "accessibilityText": "'4 op een rij voor Real is onmogelijk, PSG, Juve en Barça topfavorieten', geplaatst om 12 uur 13.",
    "abstractText": "De eerste schifting in de Champions League is doorgevoerd. Nicolas De Brabander, commentator en presentator bij Proximus Sports, laat zijn licht schijnen over enkele stellingen en vraagstukken na de groepsfase. 'Doodzonde dat Mertens eruit ligt, want hij was de beste Belg in de groepsfase.'",
    "imageLinks": [
      {
        "id": "aHR0cHM6Ly9pbWFnZXMudnJ0LmJlL29yaWcvMjAxOC8xMi8xMy9jOTk2Zjk4My1mZWNmLTExZTgtYWJjYy0wMmI3Yjc2YmY0N2YuanBn",
        "rel": "permalink",
        "url": "https://images.vrt.be/orig/2018/12/13/c996f983-fecf-11e8-abcc-02b7b76bf47f.jpg"
      }
    ],
    "contentLinks": [
      {
        "id": "aHR0cHM6Ly9zcG9yemEuYmUvbmwvMjAxOC8xMi8xMy9jbC1ncm9lcHNmYXNlLW5pY29sYXMtZGUtYnJhYmFuZGVyLnNwdi8=",
        "rel": "canonical",
        "url": "https://sporza.be/nl/2018/12/13/cl-groepsfase-nicolas-de-brabander.spv/"
      }
    ]
  }
]
        ''');

      nw.news().listen((resp) {
        expect(resp is Data<List<News>>, isTrue);
        expect((resp as Data<List<News>>).value.length, 2);


      });
    });
  });
}
