// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Competition> _$competitionSerializer = new _$CompetitionSerializer();

class _$CompetitionSerializer implements StructuredSerializer<Competition> {
  @override
  final Iterable<Type> types = const [Competition, _$Competition];
  @override
  final String wireName = 'Competition';

  @override
  Iterable serialize(Serializers serializers, Competition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'countryShort',
      serializers.serialize(object.countryShort,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'accessibilityText',
      serializers.serialize(object.accessibilityText,
          specifiedType: const FullType(String)),
      'hasRanking',
      serializers.serialize(object.hasRanking,
          specifiedType: const FullType(bool)),
    ];
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(int)));
    }
    if (object.defaultPhase != null) {
      result
        ..add('defaultPhase')
        ..add(serializers.serialize(object.defaultPhase,
            specifiedType: const FullType(String)));
    }
    if (object.canSelectFavourites != null) {
      result
        ..add('canSelectFavourites')
        ..add(serializers.serialize(object.canSelectFavourites,
            specifiedType: const FullType(bool)));
    }
    if (object.phases != null) {
      result
        ..add('phases')
        ..add(serializers.serialize(object.phases,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Phase)])));
    }
    if (object.sporzaFeatured != null) {
      result
        ..add('sporzaFeatured')
        ..add(serializers.serialize(object.sporzaFeatured,
            specifiedType: const FullType(bool)));
    }
    if (object.additionalInfo != null) {
      result
        ..add('additionalInfo')
        ..add(serializers.serialize(object.additionalInfo,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  Competition deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompetitionBuilder();

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
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countryShort':
          result.countryShort = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'accessibilityText':
          result.accessibilityText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'defaultPhase':
          result.defaultPhase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'canSelectFavourites':
          result.canSelectFavourites = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'phases':
          result.phases.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Phase)]))
              as BuiltList);
          break;
        case 'hasRanking':
          result.hasRanking = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'sporzaFeatured':
          result.sporzaFeatured = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'additionalInfo':
          result.additionalInfo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Competition extends Competition {
  @override
  final String id;
  @override
  final String country;
  @override
  final String countryShort;
  @override
  final String label;
  @override
  final int position;
  @override
  final String accessibilityText;
  @override
  final String defaultPhase;
  @override
  final bool canSelectFavourites;
  @override
  final BuiltList<Phase> phases;
  @override
  final bool hasRanking;
  @override
  final bool sporzaFeatured;
  @override
  final bool additionalInfo;

  factory _$Competition([void updates(CompetitionBuilder b)]) =>
      (new CompetitionBuilder()..update(updates)).build();

  _$Competition._(
      {this.id,
      this.country,
      this.countryShort,
      this.label,
      this.position,
      this.accessibilityText,
      this.defaultPhase,
      this.canSelectFavourites,
      this.phases,
      this.hasRanking,
      this.sporzaFeatured,
      this.additionalInfo})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Competition', 'id');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('Competition', 'country');
    }
    if (countryShort == null) {
      throw new BuiltValueNullFieldError('Competition', 'countryShort');
    }
    if (label == null) {
      throw new BuiltValueNullFieldError('Competition', 'label');
    }
    if (accessibilityText == null) {
      throw new BuiltValueNullFieldError('Competition', 'accessibilityText');
    }
    if (hasRanking == null) {
      throw new BuiltValueNullFieldError('Competition', 'hasRanking');
    }
  }

  @override
  Competition rebuild(void updates(CompetitionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CompetitionBuilder toBuilder() => new CompetitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Competition &&
        id == other.id &&
        country == other.country &&
        countryShort == other.countryShort &&
        label == other.label &&
        position == other.position &&
        accessibilityText == other.accessibilityText &&
        defaultPhase == other.defaultPhase &&
        canSelectFavourites == other.canSelectFavourites &&
        phases == other.phases &&
        hasRanking == other.hasRanking &&
        sporzaFeatured == other.sporzaFeatured &&
        additionalInfo == other.additionalInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                country.hashCode),
                                            countryShort.hashCode),
                                        label.hashCode),
                                    position.hashCode),
                                accessibilityText.hashCode),
                            defaultPhase.hashCode),
                        canSelectFavourites.hashCode),
                    phases.hashCode),
                hasRanking.hashCode),
            sporzaFeatured.hashCode),
        additionalInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Competition')
          ..add('id', id)
          ..add('country', country)
          ..add('countryShort', countryShort)
          ..add('label', label)
          ..add('position', position)
          ..add('accessibilityText', accessibilityText)
          ..add('defaultPhase', defaultPhase)
          ..add('canSelectFavourites', canSelectFavourites)
          ..add('phases', phases)
          ..add('hasRanking', hasRanking)
          ..add('sporzaFeatured', sporzaFeatured)
          ..add('additionalInfo', additionalInfo))
        .toString();
  }
}

class CompetitionBuilder implements Builder<Competition, CompetitionBuilder> {
  _$Competition _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _countryShort;
  String get countryShort => _$this._countryShort;
  set countryShort(String countryShort) => _$this._countryShort = countryShort;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  String _accessibilityText;
  String get accessibilityText => _$this._accessibilityText;
  set accessibilityText(String accessibilityText) =>
      _$this._accessibilityText = accessibilityText;

  String _defaultPhase;
  String get defaultPhase => _$this._defaultPhase;
  set defaultPhase(String defaultPhase) => _$this._defaultPhase = defaultPhase;

  bool _canSelectFavourites;
  bool get canSelectFavourites => _$this._canSelectFavourites;
  set canSelectFavourites(bool canSelectFavourites) =>
      _$this._canSelectFavourites = canSelectFavourites;

  ListBuilder<Phase> _phases;
  ListBuilder<Phase> get phases => _$this._phases ??= new ListBuilder<Phase>();
  set phases(ListBuilder<Phase> phases) => _$this._phases = phases;

  bool _hasRanking;
  bool get hasRanking => _$this._hasRanking;
  set hasRanking(bool hasRanking) => _$this._hasRanking = hasRanking;

  bool _sporzaFeatured;
  bool get sporzaFeatured => _$this._sporzaFeatured;
  set sporzaFeatured(bool sporzaFeatured) =>
      _$this._sporzaFeatured = sporzaFeatured;

  bool _additionalInfo;
  bool get additionalInfo => _$this._additionalInfo;
  set additionalInfo(bool additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  CompetitionBuilder();

  CompetitionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _country = _$v.country;
      _countryShort = _$v.countryShort;
      _label = _$v.label;
      _position = _$v.position;
      _accessibilityText = _$v.accessibilityText;
      _defaultPhase = _$v.defaultPhase;
      _canSelectFavourites = _$v.canSelectFavourites;
      _phases = _$v.phases?.toBuilder();
      _hasRanking = _$v.hasRanking;
      _sporzaFeatured = _$v.sporzaFeatured;
      _additionalInfo = _$v.additionalInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Competition other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Competition;
  }

  @override
  void update(void updates(CompetitionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Competition build() {
    _$Competition _$result;
    try {
      _$result = _$v ??
          new _$Competition._(
              id: id,
              country: country,
              countryShort: countryShort,
              label: label,
              position: position,
              accessibilityText: accessibilityText,
              defaultPhase: defaultPhase,
              canSelectFavourites: canSelectFavourites,
              phases: _phases?.build(),
              hasRanking: hasRanking,
              sporzaFeatured: sporzaFeatured,
              additionalInfo: additionalInfo);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'phases';
        _phases?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Competition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
