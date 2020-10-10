import 'package:flutter/material.dart';

class AddMatch extends StatefulWidget {
  @override
  _AddMatchState createState() => _AddMatchState();
}

class _AddMatchState extends State<AddMatch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: <Widget>[
        Center(
          child: AddMatchInfo(),
        ),
      ],
    ));
  }
}

class AddMatchInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Add Match',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
