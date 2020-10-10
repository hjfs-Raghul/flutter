import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[800],
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                child: GridView(
                  shrinkWrap: true,
                  children: [
                    /*SpinKitRotatingCircle(color: Colors.white),
                    SpinKitRotatingPlain(color: Colors.white),
                    SpinKitChasingDots(color: Colors.white),
                    SpinKitPumpingHeart(color: Colors.white),
                    SpinKitPulse(color: Colors.white),      //NICE
                    SpinKitDoubleBounce(color: Colors.white),
                    SpinKitWave(color: Colors.white, type: SpinKitWaveType.start),
                    SpinKitWave(color: Colors.white, type: SpinKitWaveType.center),
                    SpinKitWave(color: Colors.white, type: SpinKitWaveType.end),*/
                    /*SpinKitThreeBounce(color: Colors.white),
                    SpinKitWanderingCubes(color: Colors.white),
                    SpinKitWanderingCubes(color: Colors.white, shape: BoxShape.circle),
                    SpinKitCircle(color: Colors.white),     //NICE
                    SpinKitFadingFour(color: Colors.white),
                    SpinKitFadingFour(color: Colors.white, shape: BoxShape.rectangle),
                    SpinKitFadingCube(color: Colors.white),
                    SpinKitCubeGrid(size: 51.0, color: Colors.white),*/
                    /*SpinKitFoldingCube(color: Colors.white),
                    SpinKitRing(color: Colors.white),
                    SpinKitDualRing(color: Colors.white),
                    SpinKitRipple(color: Colors.white),     //NICE
                    SpinKitFadingGrid(color: Colors.white),
                    SpinKitFadingGrid(color: Colors.white, shape: BoxShape.rectangle),
                    SpinKitHourGlass(color: Colors.white),
                    SpinKitSpinningCircle(color: Colors.white),*/
                   /* SpinKitSpinningCircle(color: Colors.white, shape: BoxShape.rectangle),
                    SpinKitFadingCircle(color: Colors.white),
                    SpinKitPouringHourglass(color: Colors.white),*/   //NICE
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 15,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}