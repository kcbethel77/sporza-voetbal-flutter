// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rank.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Rank> _$rankSerializer = new _$RankSerializer();

class _$RankSerializer implements StructuredSerializer<Rank> {
  @override
  final Iterable<Type> types = const [Rank, _$Rank];
  @override
  final String wireName = 'Rank';

  @override
  Iterable serialize(Serializers serializers, Rank object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'iconUrl',
      serializers.serialize(object.iconUrl,
          specifiedType: const FullType(String)),
      'position',
      serializers.serialize(object.position,
          specifiedType: const FullType(int)),
      'matchedPlayed',
      serializers.serialize(object.matchedPlayed,
          specifiedType: const FullType(int)),
      'points',
      serializers.serialize(object.points, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'accessibility',
      serializers.serialize(object.accessibility,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Rank deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RankBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'matchedPlayed':
          result.matchedPlayed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'points':
          result.points = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessibility':
          result.accessibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Rank extends Rank {
  @override
  final String name;
  @override
  final String iconUrl;
  @override
  final int position;
  @override
  final int matchedPlayed;
  @override
  final int points;
  @override
  final String id;
  @override
  final String accessibility;

  factory _$Rank([void updates(RankBuilder b)]) =>
      (new RankBuilder()..update(updates)).build();

  _$Rank._(
      {this.name,
      this.iconUrl,
      this.position,
      this.matchedPlayed,
      this.points,
      this.id,
      this.accessibility})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Rank', 'name');
    }
    if (iconUrl == null) {
      throw new BuiltValueNullFieldError('Rank', 'iconUrl');
    }
    if (position == null) {
      throw new BuiltValueNullFieldError('Rank', 'position');
    }
    if (matchedPlayed == null) {
      throw new BuiltValueNullFieldError('Rank', 'matchedPlayed');
    }
    if (points == null) {
      throw new BuiltValueNullFieldError('Rank', 'points');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Rank', 'id');
    }
    if (accessibility == null) {
      throw new BuiltValueNullFieldError('Rank', 'accessibility');
    }
  }

  @override
  Rank rebuild(void updates(RankBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RankBuilder toBuilder() => new RankBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rank &&
        name == other.name &&
        iconUrl == other.iconUrl &&
        position == other.position &&
        matchedPlayed == other.matchedPlayed &&
        points == other.points &&
        id == other.id &&
        accessibility == other.accessibility;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), iconUrl.hashCode),
                        position.hashCode),
                    matchedPlayed.hashCode),
                points.hashCode),
            id.hashCode),
        accessibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Rank')
          ..add('name', name)
          ..add('iconUrl', iconUrl)
          ..add('position', position)
          ..add('matchedPlayed', matchedPlayed)
          ..add('points', points)
          ..add('id', id)
          ..add('accessibility', accessibility))
        .toString();
  }
}

class RankBuilder implements Builder<Rank, RankBuilder> {
  _$Rank _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _iconUrl;
  String get iconUrl => _$this._iconUrl;
  set iconUrl(String iconUrl) => _$this._iconUrl = iconUrl;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  int _matchedPlayed;
  int get matchedPlayed => _$this._matchedPlayed;
  set matchedPlayed(int matchedPlayed) => _$this._matchedPlayed = matchedPlayed;

  int _points;
  int get points => _$this._points;
  set points(int points) => _$this._points = points;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _accessibility;
  String get accessibility => _$this._accessibility;
  set accessibility(String accessibility) =>
      _$this._accessibility = accessibility;

  RankBuilder();

  RankBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _iconUrl = _$v.iconUrl;
      _position = _$v.position;
      _matchedPlayed = _$v.matchedPlayed;
      _points = _$v.points;
      _id = _$v.id;
      _accessibility = _$v.accessibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rank other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Rank;
  }

  @override
  void update(void updates(RankBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Rank build() {
    final _$result = _$v ??
        new _$Rank._(
            name: name,
            iconUrl: iconUrl,
            position: position,
            matchedPlayed: matchedPlayed,
            points: points,
            id: id,
            accessibility: accessibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
