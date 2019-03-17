import 'package:flutter/material.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/service/bloc/bloc.dart';
import 'package:spv/service/models/response.dart';

class SporzaDrawer extends StatelessWidget {
  final DrawerBloc drawerBloc;

  const SporzaDrawer(this.drawerBloc, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: DrawerHeader(
              child: Center(child: Text("Hier komt dan een image van Sporza")),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_1),
            title: Text('competities'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text("teams"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(height: 1),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("uw favoriete competities"),
                Icon(
                  Icons.edit,
                  color: Colors.grey[600],
                )
              ],
            ),
          ),
          StreamBuilder(
              stream: drawerBloc.drawer,
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data is Data<DrawerMenu>) {
                  final drawer = (snapshot.data as Data<DrawerMenu>).value;

                  final List<Widget> favCompetitions = drawer.favouriteCompetitions
                      .map((favCompetition) => ListTile(
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black,
                              child: Text(favCompetition.abbreviation),
                            ),
                            title: Text(favCompetition.name),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ))
                      .toList();

                  final Widget nonFavCompetitions =
                    ExpansionTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.menu),
                      ),
                      title: Text("overige competities"),
                      children: drawer.nonFavouriteCompetitions.map((nonFavCompetition) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(nonFavCompetition.abbreviation),
                            ),
                            title: Text(nonFavCompetition.name),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        );
                      }).toList(),
                    );

                  List<Widget> rows = [];
                  rows.addAll(favCompetitions);
                  rows.add(nonFavCompetitions);

                  return Column(children: rows);
                }

                return Container();
              }),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("instellingen"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("over deze app"),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
