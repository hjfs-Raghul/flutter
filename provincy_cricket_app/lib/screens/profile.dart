import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provincy_cricket_app/model/profile.dart';


class ProfileScreen extends StatelessWidget {
  final newPlayer = Profile(name : 'Raghul',age : 20, batType : 'R', bowlType :'L', photo :'https://st3.cricketcountry.com/wp-content/uploads/cricket/20140525110242.jpeg');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.face),
          title: Text(newPlayer.name),
          actions: [
            Icon(Icons.edit)
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Age : ${newPlayer.age} yrs',
                    ),
                    Text(
                      'Batting Type : '+ newPlayer.batType == 'R' ? 'Right' : 'Left',
                    ),
                    Text(
                        'Bowling Type : '+ newPlayer.batType == 'R' ? 'Right' : 'Left',
                    ),
                  ],
                ),
                Image.network(newPlayer.photo)
              ],
            ),
          ),
        ),
      )
    );
  }
}


