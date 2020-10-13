import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:provincy_cricket_app/model/profile.dart';
import 'package:sliverbar_with_card/sliverbar_with_card.dart';
import 'package:like_button/like_button.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    bool isLiked = false;
    double buttonSize = 30.0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: CardSliverAppBar(
          height: 200,
          background: Image.asset(
            "assets/images/google_logo.png",
            fit: BoxFit.cover,
          ),
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "AB de Villiers",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                WidgetSpan(
                  child: Icon(Icons.open_in_new, size: 19),   //TODO change icon
                ),
              ],
            ),
          ),
          titleDescription: Text("Right Handed Batsman",
              style: TextStyle(color: Colors.black, fontSize: 11)),
          backButton: false,
          backButtonColors: [Colors.white, Colors.black],
          action: LikeButton(
            size: buttonSize + 5,
            circleColor: CircleColor(
              start: Color(0xff00ddff),
              end: Color(0xff0099cc),
            ),
            bubblesColor: BubblesColor(
              dotPrimaryColor: Color(0xff33b5e5),
              dotSecondaryColor: Color(0xff0099cc),
            ),
            likeBuilder: (bool isLiked) {
              return Icon(
                Icons.favorite,
                color: isLiked ? Colors.red : Colors.grey,
                size: buttonSize - 5,
              );
            },
          ),
          body: Container(
            child: Hero(
              tag: "assets/images/google_logo.png",
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => {
                    Scaffold.of(context).showBottomSheet<void>(
                      (BuildContext context) {
                        return Container(
                          height: 200,
                          color: Colors.amber,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Text('BottomSheet'),
                                ElevatedButton(
                                  child: const Text('Close BottomSheet'),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  },
                  child: Image.asset(
                    "assets/images/fb_logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            /* Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                DetailCard(
                  heading: "Total Matches",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: false,
                ),
                DetailCard(
                  heading: "Total Runs",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: false,
                ),
                DetailCard(
                  heading: "Total Deaths",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: false,
                ),
                DetailCard(
                  heading: "Total Deaths",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: false,
                ),
                DetailCard(
                  heading: "Total Deaths",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: false,
                ),
                DetailCard(
                  heading: "Total Deaths",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: false,
                ),
                DetailCard(
                  heading: "Total Deaths",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: false,
                ),
                DetailCard(
                  heading: "Total Deaths",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: true,
                ),
                DetailCard(
                  heading: "Total Deaths",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: true,
                ),
                DetailCard(
                  heading: "Total Deaths",
                  iconColor: Colors.red[300],
                  icon: Icons.edit,
                  info: '$isLiked',
                  isEditable: true,
                ),
              ],
            ), */
          ),
        ),
      ),
    );
  }
}

class DetailCard extends StatelessWidget {
  final String info;
  final String heading;
  final IconData icon;
  final Color iconColor;
  final bool isEditable;
  DetailCard(
      {this.info, this.icon, this.heading, this.iconColor, this.isEditable});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Card(
      child: Container(
        child: ListTile(
          //tileColor: Colors.greenAccent,
          title: Text(
            "$info",
            style: TextStyle(fontSize: height * 0.04),
          ),
          subtitle: Text(
            heading,
            style: TextStyle(fontSize: height * 0.02),
          ),
          trailing: Icon(
            icon,
            size: height * 0.06,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
