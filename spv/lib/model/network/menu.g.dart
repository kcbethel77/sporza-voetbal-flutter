// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Menu> _$menuSerializer = new _$MenuSerializer();

class _$MenuSerializer implements StructuredSerializer<Menu> {
  @override
  final Iterable<Type> types = const [Menu, _$Menu];
  @override
  final String wireName = 'Menu';

  @override
  Iterable serialize(Serializers serializers, Menu object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'nonFavouriteCompetitions',
      serializers.serialize(object.nonFavouriteCompetitions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Competition)])),
      'favouriteCompetitions',
      serializers.serialize(object.favouriteCompetitions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Competition)])),
    ];

    return result;
  }

  @override
  Menu deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'nonFavouriteCompetitions':
          result.nonFavouriteCompetitions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Competition)]))
              as BuiltList);
          break;
        case 'favouriteCompetitions':
          result.favouriteCompetitions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Competition)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Menu extends Menu {
  @override
  final BuiltList<Competition> nonFavouriteCompetitions;
  @override
  final BuiltList<Competition> favouriteCompetitions;

  factory _$Menu([void updates(MenuBuilder b)]) =>
      (new MenuBuilder()..update(updates)).build();

  _$Menu._({this.nonFavouriteCompetitions, this.favouriteCompetitions})
      : super._() {
    if (nonFavouriteCompetitions == null) {
      throw new BuiltValueNullFieldError('Menu', 'nonFavouriteCompetitions');
    }
    if (favouriteCompetitions == null) {
      throw new BuiltValueNullFieldError('Menu', 'favouriteCompetitions');
    }
  }

  @override
  Menu rebuild(void updates(MenuBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuBuilder toBuilder() => new MenuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Menu &&
        nonFavouriteCompetitions == other.nonFavouriteCompetitions &&
        favouriteCompetitions == other.favouriteCompetitions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nonFavouriteCompetitions.hashCode),
        favouriteCompetitions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Menu')
          ..add('nonFavouriteCompetitions', nonFavouriteCompetitions)
          ..add('favouriteCompetitions', favouriteCompetitions))
        .toString();
  }
}

class MenuBuilder implements Builder<Menu, MenuBuilder> {
  _$Menu _$v;

  ListBuilder<Competition> _nonFavouriteCompetitions;
  ListBuilder<Competition> get nonFavouriteCompetitions =>
      _$this._nonFavouriteCompetitions ??= new ListBuilder<Competition>();
  set nonFavouriteCompetitions(
          ListBuilder<Competition> nonFavouriteCompetitions) =>
      _$this._nonFavouriteCompetitions = nonFavouriteCompetitions;

  ListBuilder<Competition> _favouriteCompetitions;
  ListBuilder<Competition> get favouriteCompetitions =>
      _$this._favouriteCompetitions ??= new ListBuilder<Competition>();
  set favouriteCompetitions(ListBuilder<Competition> favouriteCompetitions) =>
      _$this._favouriteCompetitions = favouriteCompetitions;

  MenuBuilder();

  MenuBuilder get _$this {
    if (_$v != null) {
      _nonFavouriteCompetitions = _$v.nonFavouriteCompetitions?.toBuilder();
      _favouriteCompetitions = _$v.favouriteCompetitions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Menu other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Menu;
  }

  @override
  void update(void updates(MenuBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Menu build() {
    _$Menu _$result;
    try {
      _$result = _$v ??
          new _$Menu._(
              nonFavouriteCompetitions: nonFavouriteCompetitions.build(),
              favouriteCompetitions: favouriteCompetitions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'nonFavouriteCompetitions';
        nonFavouriteCompetitions.build();
        _$failedField = 'favouriteCompetitions';
        favouriteCompetitions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Menu', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
