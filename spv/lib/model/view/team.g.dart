// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Team> _$teamSerializer = new _$TeamSerializer();

class _$TeamSerializer implements StructuredSerializer<Team> {
  @override
  final Iterable<Type> types = const [Team, _$Team];
  @override
  final String wireName = 'Team';

  @override
  Iterable serialize(Serializers serializers, Team object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'iconUrl',
      serializers.serialize(object.iconUrl,
          specifiedType: const FullType(String)),
      'isFavorite',
      serializers.serialize(object.isFavorite,
          specifiedType: const FullType(bool)),
      'canBeFavourite',
      serializers.serialize(object.canBeFavourite,
          specifiedType: const FullType(bool)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Team deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamBuilder();

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
        case 'isFavorite':
          result.isFavorite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canBeFavourite':
          result.canBeFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Team extends Team {
  @override
  final String name;
  @override
  final String iconUrl;
  @override
  final bool isFavorite;
  @override
  final bool canBeFavourite;
  @override
  final String id;

  factory _$Team([void updates(TeamBuilder b)]) =>
      (new TeamBuilder()..update(updates)).build();

  _$Team._(
      {this.name, this.iconUrl, this.isFavorite, this.canBeFavourite, this.id})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Team', 'name');
    }
    if (iconUrl == null) {
      throw new BuiltValueNullFieldError('Team', 'iconUrl');
    }
    if (isFavorite == null) {
      throw new BuiltValueNullFieldError('Team', 'isFavorite');
    }
    if (canBeFavourite == null) {
      throw new BuiltValueNullFieldError('Team', 'canBeFavourite');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Team', 'id');
    }
  }

  @override
  Team rebuild(void updates(TeamBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamBuilder toBuilder() => new TeamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Team &&
        name == other.name &&
        iconUrl == other.iconUrl &&
        isFavorite == other.isFavorite &&
        canBeFavourite == other.canBeFavourite &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), iconUrl.hashCode),
                isFavorite.hashCode),
            canBeFavourite.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Team')
          ..add('name', name)
          ..add('iconUrl', iconUrl)
          ..add('isFavorite', isFavorite)
          ..add('canBeFavourite', canBeFavourite)
          ..add('id', id))
        .toString();
  }
}

class TeamBuilder implements Builder<Team, TeamBuilder> {
  _$Team _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _iconUrl;
  String get iconUrl => _$this._iconUrl;
  set iconUrl(String iconUrl) => _$this._iconUrl = iconUrl;

  bool _isFavorite;
  bool get isFavorite => _$this._isFavorite;
  set isFavorite(bool isFavorite) => _$this._isFavorite = isFavorite;

  bool _canBeFavourite;
  bool get canBeFavourite => _$this._canBeFavourite;
  set canBeFavourite(bool canBeFavourite) =>
      _$this._canBeFavourite = canBeFavourite;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  TeamBuilder();

  TeamBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _iconUrl = _$v.iconUrl;
      _isFavorite = _$v.isFavorite;
      _canBeFavourite = _$v.canBeFavourite;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Team other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Team;
  }

  @override
  void update(void updates(TeamBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Team build() {
    final _$result = _$v ??
        new _$Team._(
            name: name,
            iconUrl: iconUrl,
            isFavorite: isFavorite,
            canBeFavourite: canBeFavourite,
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
