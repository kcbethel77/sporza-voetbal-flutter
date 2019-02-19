// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'not_started_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotStartedHeadingInfo> _$notStartedHeadingInfoSerializer =
    new _$NotStartedHeadingInfoSerializer();

class _$NotStartedHeadingInfoSerializer
    implements StructuredSerializer<NotStartedHeadingInfo> {
  @override
  final Iterable<Type> types = const [
    NotStartedHeadingInfo,
    _$NotStartedHeadingInfo
  ];
  @override
  final String wireName = 'NotStartedHeadingInfo';

  @override
  Iterable serialize(Serializers serializers, NotStartedHeadingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'statusDay',
      serializers.serialize(object.statusDay,
          specifiedType: const FullType(String)),
      'statusLabel',
      serializers.serialize(object.statusLabel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NotStartedHeadingInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotStartedHeadingInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'statusDay':
          result.statusDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statusLabel':
          result.statusLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotStartedHeadingInfo extends NotStartedHeadingInfo {
  @override
  final String statusDay;
  @override
  final String statusLabel;

  factory _$NotStartedHeadingInfo(
          [void updates(NotStartedHeadingInfoBuilder b)]) =>
      (new NotStartedHeadingInfoBuilder()..update(updates)).build();

  _$NotStartedHeadingInfo._({this.statusDay, this.statusLabel}) : super._() {
    if (statusDay == null) {
      throw new BuiltValueNullFieldError('NotStartedHeadingInfo', 'statusDay');
    }
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError(
          'NotStartedHeadingInfo', 'statusLabel');
    }
  }

  @override
  NotStartedHeadingInfo rebuild(void updates(NotStartedHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NotStartedHeadingInfoBuilder toBuilder() =>
      new NotStartedHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotStartedHeadingInfo &&
        statusDay == other.statusDay &&
        statusLabel == other.statusLabel;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusDay.hashCode), statusLabel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotStartedHeadingInfo')
          ..add('statusDay', statusDay)
          ..add('statusLabel', statusLabel))
        .toString();
  }
}

class NotStartedHeadingInfoBuilder
    implements Builder<NotStartedHeadingInfo, NotStartedHeadingInfoBuilder> {
  _$NotStartedHeadingInfo _$v;

  String _statusDay;
  String get statusDay => _$this._statusDay;
  set statusDay(String statusDay) => _$this._statusDay = statusDay;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  NotStartedHeadingInfoBuilder();

  NotStartedHeadingInfoBuilder get _$this {
    if (_$v != null) {
      _statusDay = _$v.statusDay;
      _statusLabel = _$v.statusLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotStartedHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotStartedHeadingInfo;
  }

  @override
  void update(void updates(NotStartedHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NotStartedHeadingInfo build() {
    final _$result = _$v ??
        new _$NotStartedHeadingInfo._(
            statusDay: statusDay, statusLabel: statusLabel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
