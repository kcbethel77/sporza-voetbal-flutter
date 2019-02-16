import 'package:common_spv/src/model/view/view_models.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'package:common_spv/src/model/view/calendar.g.dart';

abstract class Calendar implements Built<Calendar, CalendarBuilder> {
  static Serializer<Calendar> get serializer => _$calendarSerializer;

  Calendar._();

  String get competitionTitle;

  BuiltList<CalendarPhase> get phases;

  factory Calendar([updates(CalendarBuilder b)]) = _$Calendar;
}
