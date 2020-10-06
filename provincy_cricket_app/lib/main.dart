
import 'package:flutter/material.dart';

import 'package:provincy_cricket_app/widget/Loader.dart';
import 'package:provincy_cricket_app/screens/login.dart';
import 'package:provincy_cricket_app/model/Player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> thisOver = [];
  int totalBalls = 0;
  int score = 0;
  int wicket = 0;
  Player striker, nonStriker;

  /*addBallValue(String val) {
    thisOver.add(val);
  }*/

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initMatchSetUp();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.deepOrange,
          backgroundColor: Colors.white),
      home: Scaffold(
        /*appBar: AppBar(
          title: Text(
            'Score Card',
            style: TextStyle(color: Colors.white),
          ),
        ),*/
        body : Login(),
        //floatingActionButton: FloatingActionButton.extended(onPressed: null, label: null),
        /*body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0),
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Text(
                          'TEAM XI - $score / $wicket (${ballsToOvers(totalBalls)})',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                  '${striker.name} * - ${striker.runs}(${striker.balls})'),
                              Text(
                                  '${nonStriker.name} - ${nonStriker.runs}(${nonStriker.balls})'),
                            ],
                          ),
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                  '${'Bowler'} * - ${striker.runs}(${striker.balls})'),
                              Row(
                                children: [
                                  Text(
                                    'This Over',
                                    textAlign: TextAlign.left,
                                  ),
                                  Row(
                                    children: thisOver.map((item) {
                                      return Text(item);
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              RaisedButton(
                child: Text(
                  "Full scorecard",
                  style: TextStyle(fontStyle: FontStyle.normal),
                ),
                onPressed: () => print("ScoreCard"),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: GridView(
                  shrinkWrap: true,
                  children: [
                    currentBall('0'),
                    currentBall('1'),
                    currentBall('2'),
                    currentBall('3'),
                    currentBall('4'),
                    currentBall('6'),
                    currentBall('W'),
                    currentBall('Wd'),
                    currentBall('Nb'),
                    currentBall('5'),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 15,
                  ),
                ),
              ),
            ],
          ),
        ),*/
      ),
    );
  }

  initMatchSetUp() {
    striker = Player('Batsman1');
    nonStriker = Player('Batsman2');
  }

  changeStrike() {
    Player temp = striker;
    striker = nonStriker;
    nonStriker = temp;
  }

  Widget currentBall(String currentBallValue) {
    return Container(
      width: 10,
      height: 10,
      child: RaisedButton(
        elevation: 2,
        //padding: EdgeInsets.all(10),
        onPressed: () => {
          setState(() {
            bool extras;
            int ballScore = getScore(currentBallValue);
            extras = currentBallValue == 'Wd' || currentBallValue == 'Nb';
            if (ballScore != -1) {
              //if not wicket
              score += ballScore;
              if (!extras) {
                striker.runs += ballScore;
              }
              if (currentBallValue != 'Wd') {
                striker.balls++;
              }
              if (ballScore == 1 || ballScore == 3) {
                if (!extras) {
                  changeStrike();
                }
              }
            } else {
              striker.balls++;
              wicket++;
              striker = new Player('Batsman' + (wicket + 2).toString());
            }

            if (!extras) {
              totalBalls++;
            }
            thisOver.add(currentBallValue);
          }),
        },
        disabledColor: Colors.grey,
        color: getBallValueColor(currentBallValue),
        child: FittedBox(
          child: Text(
            currentBallValue,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(150),
          /*side: BorderSide(
            color: Colors.red,
          ),*/
        ),
      ),
    );
  }

  String ballsToOvers(int totBalls) {
    int overs = totBalls ~/ 6;
    int balls = totBalls % 6;
    return overs.toString() + '.' + balls.toString();
  }

  getBallValueColor(String runs) {
    switch (runs) {
      case '0':
        return Colors.black12;
      case '1':
        return Colors.blue;
      case '2':
        return Colors.blue;
      case '3':
        return Colors.blue;
      case '4':
        return Colors.deepOrange;
      case '5':
        return Colors.blue;
      case '6':
        return Colors.deepOrange;
      case 'W':
        return Color.fromRGBO(255, 0, 0, 1);
      case 'Nb':
        return Colors.redAccent;
      case 'Wd':
        return Colors.redAccent;
    }
  }

  int getScore(currentBallValue) {
    switch (currentBallValue) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
        return int.parse(currentBallValue);
        break;
      case 'Wd':
      case 'Nb':
        return 1;
        break;
      case 'W':
        return -1;
        break;
    }
  }
}
