import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {

  final String errorMsg;

  ErrorScreen(this.errorMsg) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: Container(
          child: Text(
           errorMsg != null && errorMsg != "" ? errorMsg : "ERROR ",
            textAlign:TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
