import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provincy_cricket_app/screens/ChatScreen.dart';
import 'package:provincy_cricket_app/screens/feed.dart';
import 'package:provincy_cricket_app/screens/search.dart';
import 'package:provincy_cricket_app/screens/add.dart';
import 'package:provincy_cricket_app/screens/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIdx = 3;
  Widget _displayPage = AddMatch();

  Widget getCurrentPage(int page) {
    switch (page + 1) {
      case 1:
        return Feed();
        break;
      case 2:
        return Search();
        break;
      case 3:
        return AddMatch();
        break;
      case 4:
        return ChatScreen();
        break;
      case 5:
        return Profile();
        break;
      default:
        return AddMatch();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.cyan),
        ),
      ),
      body: _displayPage,
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIdx,
        color: Colors.brown,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.red[900],
        height: 50,
        items: <Widget>[
          Icon(
            Icons.group,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.search, //TODO change icon
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.add_box, //TODO change icon
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.chat,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            size: 20,
            color: Colors.white,
          ),
        ],
        animationDuration: Duration(
          milliseconds: 300,
        ),
        onTap: (int idx) {
          setState(() {
            _displayPage = getCurrentPage(idx);
          });
        },
      ),
    );
  }
}
