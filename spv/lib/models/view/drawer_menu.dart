import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:spv/models/view/competition.dart';

part 'drawer_menu.g.dart';

abstract class DrawerMenu implements Built<DrawerMenu, DrawerMenuBuilder> {
  static Serializer<DrawerMenu> get serializer => _$drawerMenuSerializer;

  DrawerMenu._();

  BuiltList<Competition> get nonFavouriteCompetitions;

  //combination of Favourites as well as Sporza Featured
  BuiltList<Competition> get favouriteCompetitions;

  factory DrawerMenu([updates(DrawerMenuBuilder b)]) = _$DrawerMenu;
}
