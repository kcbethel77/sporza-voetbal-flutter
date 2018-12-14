import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/soccer_datasource.dart';

class MockHttp extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class MockCache extends Mock implements Cache {}

class MockSporzaSoccerDataSource extends Mock implements SporzaSoccerDataSource {}
