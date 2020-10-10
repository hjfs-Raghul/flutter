import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
          'Search',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
