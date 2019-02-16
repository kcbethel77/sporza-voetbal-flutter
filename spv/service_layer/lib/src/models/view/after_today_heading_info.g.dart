// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'after_today_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AfterTodayHeadingInfo> _$afterTodayHeadingInfoSerializer =
    new _$AfterTodayHeadingInfoSerializer();

class _$AfterTodayHeadingInfoSerializer
    implements StructuredSerializer<AfterTodayHeadingInfo> {
  @override
  final Iterable<Type> types = const [
    AfterTodayHeadingInfo,
    _$AfterTodayHeadingInfo
  ];
  @override
  final String wireName = 'AfterTodayHeadingInfo';

  @override
  Iterable serialize(Serializers serializers, AfterTodayHeadingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'statusDay',
      serializers.serialize(object.statusDay,
          specifiedType: const FullType(String)),
      'statusDate',
      serializers.serialize(object.statusDate,
          specifiedType: const FullType(String)),
      'statusLabel',
      serializers.serialize(object.statusLabel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AfterTodayHeadingInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AfterTodayHeadingInfoBuilder();

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
        case 'statusDate':
          result.statusDate = serializers.deserialize(value,
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

class _$AfterTodayHeadingInfo extends AfterTodayHeadingInfo {
  @override
  final String statusDay;
  @override
  final String statusDate;
  @override
  final String statusLabel;

  factory _$AfterTodayHeadingInfo(
          [void updates(AfterTodayHeadingInfoBuilder b)]) =>
      (new AfterTodayHeadingInfoBuilder()..update(updates)).build();

  _$AfterTodayHeadingInfo._({this.statusDay, this.statusDate, this.statusLabel})
      : super._() {
    if (statusDay == null) {
      throw new BuiltValueNullFieldError('AfterTodayHeadingInfo', 'statusDay');
    }
    if (statusDate == null) {
      throw new BuiltValueNullFieldError('AfterTodayHeadingInfo', 'statusDate');
    }
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError(
          'AfterTodayHeadingInfo', 'statusLabel');
    }
  }

  @override
  AfterTodayHeadingInfo rebuild(void updates(AfterTodayHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AfterTodayHeadingInfoBuilder toBuilder() =>
      new AfterTodayHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AfterTodayHeadingInfo &&
        statusDay == other.statusDay &&
        statusDate == other.statusDate &&
        statusLabel == other.statusLabel;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, statusDay.hashCode), statusDate.hashCode),
        statusLabel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AfterTodayHeadingInfo')
          ..add('statusDay', statusDay)
          ..add('statusDate', statusDate)
          ..add('statusLabel', statusLabel))
        .toString();
  }
}

class AfterTodayHeadingInfoBuilder
    implements Builder<AfterTodayHeadingInfo, AfterTodayHeadingInfoBuilder> {
  _$AfterTodayHeadingInfo _$v;

  String _statusDay;
  String get statusDay => _$this._statusDay;
  set statusDay(String statusDay) => _$this._statusDay = statusDay;

  String _statusDate;
  String get statusDate => _$this._statusDate;
  set statusDate(String statusDate) => _$this._statusDate = statusDate;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  AfterTodayHeadingInfoBuilder();

  AfterTodayHeadingInfoBuilder get _$this {
    if (_$v != null) {
      _statusDay = _$v.statusDay;
      _statusDate = _$v.statusDate;
      _statusLabel = _$v.statusLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AfterTodayHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AfterTodayHeadingInfo;
  }

  @override
  void update(void updates(AfterTodayHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AfterTodayHeadingInfo build() {
    final _$result = _$v ??
        new _$AfterTodayHeadingInfo._(
            statusDay: statusDay,
            statusDate: statusDate,
            statusLabel: statusLabel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
