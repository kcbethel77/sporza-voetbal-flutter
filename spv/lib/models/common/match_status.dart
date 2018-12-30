import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'match_status.g.dart';

class MatchStatus extends EnumClass {
  static Serializer<MatchStatus> get serializer => _$matchStatusSerializer;

  static const MatchStatus END = _$END;
  static const MatchStatus SUSPENDED = _$SUSPENDED;
  static const MatchStatus SUSPENDED_INDEFINITELY = _$SUSPENDED_INDEFINITELY;
  static const MatchStatus NOT_STARTED = _$NOT_STARTED;
  static const MatchStatus AFTER_TODAY = _$AFTER_TODAY;
  static const MatchStatus CANCELLED = _$CANCELLED;
  static const MatchStatus LIVE = _$LIVE;
  static const MatchStatus POSTPONED = _$POSTPONED;

  const MatchStatus._(String name) : super(name);

  static BuiltSet<MatchStatus> get values => _$values;

  static MatchStatus valueOf(String name) => _$valueOf(name);

  static bool isLive(MatchStatus status) => status == MatchStatus.LIVE;
}
