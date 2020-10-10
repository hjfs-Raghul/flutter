import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: <Widget>[
        Center(
          child: FeedInfo(),
        ),
      ],
    ));
  }
}

class FeedInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Feed',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
