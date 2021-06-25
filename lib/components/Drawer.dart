import 'package:flutter/material.dart';

class DrawerPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text('Madiha Mallick'),
            accountEmail: Text('mallickmadiha9031@gmail.com'),
            // profile picture starts
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            // profile picture ends
            // we change color surrounding Avatar from default(blue) to pink
            decoration: new BoxDecoration(
              color: Colors.pink[800],
            ),
          ),
          // Drawer Header ends
          // Drawer Body Starts
          new InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.pink[800]),
              )),

          new InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('My account'),
                leading: Icon(Icons.person, color: Colors.pink[800]),
              )),

          new InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('My orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.pink[800]),
              )),

          new InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.pink[800]),
              )),

          new InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.pink[800]),
              )),

          Divider(),
          new InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey[800]),
              )),

          new InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('About'),
                leading: Icon(Icons.help, color: Colors.blue[800]),
              )),
        ],
      ),
    );
  }
}
