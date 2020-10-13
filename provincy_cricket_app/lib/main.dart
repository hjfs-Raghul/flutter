import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:provincy_cricket_app/providers/Auth.dart';
import 'package:provincy_cricket_app/screens/ErrorScreen.dart';
import 'package:provincy_cricket_app/screens/login.dart';
import 'package:provincy_cricket_app/model/Player.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Auth()
        ),
      ],
      child:  MyApp(),
    ),
  );
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
