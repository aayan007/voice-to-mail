import 'package:flutter/material.dart';
import 'package:project1/About/mainAbout.dart';
import 'package:project1/Vpage/email.dart';

class MainPageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(100.0),
            color: Colors.deepPurple.shade200,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmailPages()));
            },
            leading: Icon(Icons.mail),
            title: Text('Voice To Mail'),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chat'),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
            leading: Icon(Icons.person),
            title: Text('About'),
          ),
        ],
      ),
    );
  }
}
