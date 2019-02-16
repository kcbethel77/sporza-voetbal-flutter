// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatchStatus _$END = const MatchStatus._('END');
const MatchStatus _$SUSPENDED = const MatchStatus._('SUSPENDED');
const MatchStatus _$SUSPENDED_INDEFINITELY =
    const MatchStatus._('SUSPENDED_INDEFINITELY');
const MatchStatus _$NOT_STARTED = const MatchStatus._('NOT_STARTED');
const MatchStatus _$AFTER_TODAY = const MatchStatus._('AFTER_TODAY');
const MatchStatus _$CANCELLED = const MatchStatus._('CANCELLED');
const MatchStatus _$LIVE = const MatchStatus._('LIVE');
const MatchStatus _$POSTPONED = const MatchStatus._('POSTPONED');

MatchStatus _$valueOf(String name) {
  switch (name) {
    case 'END':
      return _$END;
    case 'SUSPENDED':
      return _$SUSPENDED;
    case 'SUSPENDED_INDEFINITELY':
      return _$SUSPENDED_INDEFINITELY;
    case 'NOT_STARTED':
      return _$NOT_STARTED;
    case 'AFTER_TODAY':
      return _$AFTER_TODAY;
    case 'CANCELLED':
      return _$CANCELLED;
    case 'LIVE':
      return _$LIVE;
    case 'POSTPONED':
      return _$POSTPONED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MatchStatus> _$values =
    new BuiltSet<MatchStatus>(const <MatchStatus>[
  _$END,
  _$SUSPENDED,
  _$SUSPENDED_INDEFINITELY,
  _$NOT_STARTED,
  _$AFTER_TODAY,
  _$CANCELLED,
  _$LIVE,
  _$POSTPONED,
]);

Serializer<MatchStatus> _$matchStatusSerializer = new _$MatchStatusSerializer();

class _$MatchStatusSerializer implements PrimitiveSerializer<MatchStatus> {
  @override
  final Iterable<Type> types = const <Type>[MatchStatus];
  @override
  final String wireName = 'MatchStatus';

  @override
  Object serialize(Serializers serializers, MatchStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  MatchStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatchStatus.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
