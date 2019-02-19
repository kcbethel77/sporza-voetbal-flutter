import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:spv/model/network/network_models.dart';

part 'menu.g.dart';

abstract class Menu implements Built<Menu, MenuBuilder> {
  static Serializer<Menu> get serializer => _$menuSerializer;

  Menu._();

  BuiltList<Competition> get nonFavouriteCompetitions;

  BuiltList<Competition> get favouriteCompetitions;

  factory Menu([updates(MenuBuilder b)]) = _$Menu;
}
