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
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'logoUrl',
      serializers.serialize(object.logoUrl,
          specifiedType: const FullType(String)),
    ];
    if (object.countryShort != null) {
      result
        ..add('countryShort')
        ..add(serializers.serialize(object.countryShort,
            specifiedType: const FullType(String)));
    }
    if (object.competitionIds != null) {
      result
        ..add('competitionIds')
        ..add(serializers.serialize(object.competitionIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.canSelectAsFavourite != null) {
      result
        ..add('canSelectAsFavourite')
        ..add(serializers.serialize(object.canSelectAsFavourite,
            specifiedType: const FullType(bool)));
    }

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logoUrl':
          result.logoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countryShort':
          result.countryShort = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'competitionIds':
          result.competitionIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'canSelectAsFavourite':
          result.canSelectAsFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Team extends Team {
  @override
  final String id;
  @override
  final String name;
  @override
  final String logoUrl;
  @override
  final String countryShort;
  @override
  final BuiltList<String> competitionIds;
  @override
  final bool canSelectAsFavourite;

  factory _$Team([void updates(TeamBuilder b)]) =>
      (new TeamBuilder()..update(updates)).build();

  _$Team._(
      {this.id,
      this.name,
      this.logoUrl,
      this.countryShort,
      this.competitionIds,
      this.canSelectAsFavourite})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Team', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Team', 'name');
    }
    if (logoUrl == null) {
      throw new BuiltValueNullFieldError('Team', 'logoUrl');
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
        id == other.id &&
        name == other.name &&
        logoUrl == other.logoUrl &&
        countryShort == other.countryShort &&
        competitionIds == other.competitionIds &&
        canSelectAsFavourite == other.canSelectAsFavourite;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), logoUrl.hashCode),
                countryShort.hashCode),
            competitionIds.hashCode),
        canSelectAsFavourite.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Team')
          ..add('id', id)
          ..add('name', name)
          ..add('logoUrl', logoUrl)
          ..add('countryShort', countryShort)
          ..add('competitionIds', competitionIds)
          ..add('canSelectAsFavourite', canSelectAsFavourite))
        .toString();
  }
}

class TeamBuilder implements Builder<Team, TeamBuilder> {
  _$Team _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _logoUrl;
  String get logoUrl => _$this._logoUrl;
  set logoUrl(String logoUrl) => _$this._logoUrl = logoUrl;

  String _countryShort;
  String get countryShort => _$this._countryShort;
  set countryShort(String countryShort) => _$this._countryShort = countryShort;

  ListBuilder<String> _competitionIds;
  ListBuilder<String> get competitionIds =>
      _$this._competitionIds ??= new ListBuilder<String>();
  set competitionIds(ListBuilder<String> competitionIds) =>
      _$this._competitionIds = competitionIds;

  bool _canSelectAsFavourite;
  bool get canSelectAsFavourite => _$this._canSelectAsFavourite;
  set canSelectAsFavourite(bool canSelectAsFavourite) =>
      _$this._canSelectAsFavourite = canSelectAsFavourite;

  TeamBuilder();

  TeamBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _logoUrl = _$v.logoUrl;
      _countryShort = _$v.countryShort;
      _competitionIds = _$v.competitionIds?.toBuilder();
      _canSelectAsFavourite = _$v.canSelectAsFavourite;
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
    _$Team _$result;
    try {
      _$result = _$v ??
          new _$Team._(
              id: id,
              name: name,
              logoUrl: logoUrl,
              countryShort: countryShort,
              competitionIds: _competitionIds?.build(),
              canSelectAsFavourite: canSelectAsFavourite);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'competitionIds';
        _competitionIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Team', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
