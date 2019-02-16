import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:common_spv/src/model/view/view_models.dart';

part 'package:common_spv/src/model/view/calendar_phase.g.dart';

abstract class CalendarPhase implements Built<CalendarPhase, CalendarPhaseBuilder> {
  static Serializer<CalendarPhase> get serializer => _$calendarPhaseSerializer;

  CalendarPhase._();

  bool get isCurrent;

  String get name;

  BuiltList<MatchDay> get matchDays;

  factory CalendarPhase([updates(CalendarPhaseBuilder b)]) = _$CalendarPhase;
}
