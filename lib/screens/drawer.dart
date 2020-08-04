import 'package:flutter/material.dart';

import './home_screen.dart';
import './Log_in.dart';
import './sign_up.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/236x/05/7e/07/057e07c93617ec40381db11b0d1a264d.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'Find A Mechanic',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text(
              'Search A Mechanic',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Log In',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_drop_up),
            title: Text(
              'Sign Up',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back_ios),
            title: Text(
              'Log Out',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
