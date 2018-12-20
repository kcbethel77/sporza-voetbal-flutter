import 'package:built_value/serializer.dart';
import 'package:spv/models/network/network_models.dart';

const int _version = 7;

const String _defaultPath = "football";

const Map<String, String> _defaultHeaders = {
  "Accept": "application/be.vrt.infostrada.v$_version+json",
  "X-Device-Id": "android"
};

abstract class DatasourceType<T> {
  const DatasourceType();

  String get uri => "$path/$file";

  String get path => _defaultPath;

  String get file;

  Map<String, String> get headers => _defaultHeaders;

  Serializer<T> get serializer;
}

const newsDatasourceType = const NewsDatasourceType();

class NewsDatasourceType extends DatasourceType<News> {
  @override
  String get file => "news";

  @override
  Serializer<News> get serializer => News.serializer;

  const NewsDatasourceType() : super();
}

const videoDatasourceType = const VideoDatasourceType();

class VideoDatasourceType extends DatasourceType<Video> {
  @override
  String get file => "videos";

  @override
  Serializer<Video> get serializer => Video.serializer;

  const VideoDatasourceType() : super();
}

const teamDataSourceType = const TeamDatasourceType();

class TeamDatasourceType extends DatasourceType<Team> {
  @override
  String get file => "teams";

  @override
  Serializer<Team> get serializer => Team.serializer;

  const TeamDatasourceType() : super();
}

const competitionDataSourceType = const CompetitionDataSourceType();

class CompetitionDataSourceType extends DatasourceType<Competition> {
  @override
  String get file => "competitions";

  @override
  Serializer<Competition> get serializer => Competition.serializer;

  const CompetitionDataSourceType() : super();
}

class CalendarForCompetitionDataSourceType extends DatasourceType<Competition> {
  final String _competitionId;

  @override
  String get file => "competition/$_competitionId";

  @override
  Serializer<Competition> get serializer => Competition.serializer;

  const CalendarForCompetitionDataSourceType(this._competitionId);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalendarForCompetitionDataSourceType &&
      runtimeType == other.runtimeType &&
      _competitionId == other._competitionId;

  @override
  int get hashCode => _competitionId.hashCode;
}

class RankingForCompetitionDataSourceType extends DatasourceType<Competition> {

  final String _competitionId;

  RankingForCompetitionDataSourceType(this._competitionId);

  @override
  String get file => "competition/$_competitionId/ranking";

  @override
  Serializer<Competition> get serializer => Competition.serializer;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RankingForCompetitionDataSourceType &&
      runtimeType == other.runtimeType &&
      _competitionId == other._competitionId;

  @override
  int get hashCode => _competitionId.hashCode;
}