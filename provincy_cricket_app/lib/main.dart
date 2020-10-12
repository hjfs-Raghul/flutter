import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provincy_cricket_app/screens/ErrorScreen.dart';
import 'package:provincy_cricket_app/screens/login.dart';
import 'package:provincy_cricket_app/model/Player.dart';

void main() {
  /*final Future<FirebaseApp> _initialization = Firebase.initializeApp();
   MaterialApp(
       home: FutureBuilder(
        future: _initialization,
        builder: (context,snapshot) {
          if(snapshot.hasError)
            return ErrorScreen("Snap Error" +snapshot.error.toString());
          if (snapshot.connectionState == ConnectionState.done) {*/
  runApp(MyApp());
  /* }
          return Container();
        }
    ),
  );*/
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
    );

  }
}
