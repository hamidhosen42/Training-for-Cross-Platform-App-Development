import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewWigth extends StatelessWidget {
  const NewWigth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage('Image/a1.jpg'),
                minRadius: 50,
                maxRadius: 75,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('Image/a1.jpg'),
                minRadius: 50,
                maxRadius: 75,
              ),
            ],
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('Image/a1.jpg'),
              minRadius: 50,
              maxRadius: 75,
            ),
            accountName: Text("Hamid Hosen"),
            accountEmail: Text('hamidhosen8444@gmail.com'),
          ),
          ListTile(
            dense: false,
            onTap: () {},
            selected: true,
            // selectedTileColor: Colors.red,
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            dense: false,
            onTap: () {},
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
          ListTile(
            dense: false,
            onTap: () {},
            leading: Icon(Icons.baby_changing_station),
            title: Text("Essentials"),
          ),
          Divider(
            thickness: 2,
            height: 3,
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            dense: false,
            onTap: () {},
            leading: Icon(FontAwesomeIcons.locationArrow),
            title: Text("Location errow"),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text("Map"),
          ),
          ListTile(
            dense: false,
            onTap: () {},
            leading: Icon(FontAwesomeIcons.marker),
            title: Text("Marker"),
          ),
          Divider(
            thickness: 2,
            height: 3,
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            dense: false,
            onTap: () {},
            leading: Icon(Icons.window),
            title: Text("Windows"),
          ),
          ListTile(
            dense: false,
            onTap: () {},
            leading: Icon(FontAwesomeIcons.smile),
            title: Text("Smail"),
          ),
          ListTile(
            dense: false,
            onTap: () {},
            leading: Icon(FontAwesomeIcons.lock),
            title: Text("Lock"),
          ),
        ],
      ),
    );
  }
}