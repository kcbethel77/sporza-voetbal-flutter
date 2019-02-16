// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_phase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RankingPhase> _$rankingPhaseSerializer =
    new _$RankingPhaseSerializer();

class _$RankingPhaseSerializer implements StructuredSerializer<RankingPhase> {
  @override
  final Iterable<Type> types = const [RankingPhase, _$RankingPhase];
  @override
  final String wireName = 'RankingPhase';

  @override
  Iterable serialize(Serializers serializers, RankingPhase object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'isCurrent',
      serializers.serialize(object.isCurrent,
          specifiedType: const FullType(bool)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'rankings',
      serializers.serialize(object.rankings,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Rank)])),
    ];

    return result;
  }

  @override
  RankingPhase deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RankingPhaseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'isCurrent':
          result.isCurrent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rankings':
          result.rankings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Rank)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$RankingPhase extends RankingPhase {
  @override
  final bool isCurrent;
  @override
  final String name;
  @override
  final BuiltList<Rank> rankings;

  factory _$RankingPhase([void updates(RankingPhaseBuilder b)]) =>
      (new RankingPhaseBuilder()..update(updates)).build();

  _$RankingPhase._({this.isCurrent, this.name, this.rankings}) : super._() {
    if (isCurrent == null) {
      throw new BuiltValueNullFieldError('RankingPhase', 'isCurrent');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('RankingPhase', 'name');
    }
    if (rankings == null) {
      throw new BuiltValueNullFieldError('RankingPhase', 'rankings');
    }
  }

  @override
  RankingPhase rebuild(void updates(RankingPhaseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RankingPhaseBuilder toBuilder() => new RankingPhaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RankingPhase &&
        isCurrent == other.isCurrent &&
        name == other.name &&
        rankings == other.rankings;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, isCurrent.hashCode), name.hashCode), rankings.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RankingPhase')
          ..add('isCurrent', isCurrent)
          ..add('name', name)
          ..add('rankings', rankings))
        .toString();
  }
}

class RankingPhaseBuilder
    implements Builder<RankingPhase, RankingPhaseBuilder> {
  _$RankingPhase _$v;

  bool _isCurrent;
  bool get isCurrent => _$this._isCurrent;
  set isCurrent(bool isCurrent) => _$this._isCurrent = isCurrent;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<Rank> _rankings;
  ListBuilder<Rank> get rankings =>
      _$this._rankings ??= new ListBuilder<Rank>();
  set rankings(ListBuilder<Rank> rankings) => _$this._rankings = rankings;

  RankingPhaseBuilder();

  RankingPhaseBuilder get _$this {
    if (_$v != null) {
      _isCurrent = _$v.isCurrent;
      _name = _$v.name;
      _rankings = _$v.rankings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RankingPhase other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RankingPhase;
  }

  @override
  void update(void updates(RankingPhaseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RankingPhase build() {
    _$RankingPhase _$result;
    try {
      _$result = _$v ??
          new _$RankingPhase._(
              isCurrent: isCurrent, name: name, rankings: rankings.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'rankings';
        rankings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RankingPhase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
