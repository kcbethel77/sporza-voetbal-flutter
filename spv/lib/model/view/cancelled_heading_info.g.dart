// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelled_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancelledHeadingInfo> _$cancelledHeadingInfoSerializer =
    new _$CancelledHeadingInfoSerializer();

class _$CancelledHeadingInfoSerializer
    implements StructuredSerializer<CancelledHeadingInfo> {
  @override
  final Iterable<Type> types = const [
    CancelledHeadingInfo,
    _$CancelledHeadingInfo
  ];
  @override
  final String wireName = 'CancelledHeadingInfo';

  @override
  Iterable serialize(Serializers serializers, CancelledHeadingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'statusLabel',
      serializers.serialize(object.statusLabel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CancelledHeadingInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancelledHeadingInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'statusLabel':
          result.statusLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CancelledHeadingInfo extends CancelledHeadingInfo {
  @override
  final String statusLabel;

  factory _$CancelledHeadingInfo(
          [void updates(CancelledHeadingInfoBuilder b)]) =>
      (new CancelledHeadingInfoBuilder()..update(updates)).build();

  _$CancelledHeadingInfo._({this.statusLabel}) : super._() {
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError('CancelledHeadingInfo', 'statusLabel');
    }
  }

  @override
  CancelledHeadingInfo rebuild(void updates(CancelledHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelledHeadingInfoBuilder toBuilder() =>
      new CancelledHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelledHeadingInfo && statusLabel == other.statusLabel;
  }

  @override
  int get hashCode {
    return $jf($jc(0, statusLabel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancelledHeadingInfo')
          ..add('statusLabel', statusLabel))
        .toString();
  }
}

class CancelledHeadingInfoBuilder
    implements Builder<CancelledHeadingInfo, CancelledHeadingInfoBuilder> {
  _$CancelledHeadingInfo _$v;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  CancelledHeadingInfoBuilder();

  CancelledHeadingInfoBuilder get _$this {
    if (_$v != null) {
      _statusLabel = _$v.statusLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelledHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancelledHeadingInfo;
  }

  @override
  void update(void updates(CancelledHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CancelledHeadingInfo build() {
    final _$result =
        _$v ?? new _$CancelledHeadingInfo._(statusLabel: statusLabel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
