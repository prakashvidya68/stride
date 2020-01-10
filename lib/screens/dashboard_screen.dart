import 'dart:math';

import 'package:flutter/material.dart';

import 'package:stride/widgets/levelInfo.dart';
import 'package:stride/widgets/raidalGraph.dart';
import '../widgets/dashboardScoreBoard.dart';
import '../widgets/dashboardMiddleRow.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          child: DashBoardScoreBoard(),
          onTap: () {
            Navigator.of(context).pushNamed('/yourActivity');
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 2,
            right: 2,
          ),
          child: LevelInfo(),
        ),
        MiddleRow(),
        Padding(
          padding: const EdgeInsets.only(
            // top: 2.0,
            left: 2,
            right: 2,
          ),
          child: WaterInfo(),
        ),
      ],
    );
  }
}

class WaterInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: EdgeInsets.all(13),
            height: MediaQuery.of(context).size.height * .28,
            width: MediaQuery.of(context).size.width * 0.48,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF5678C1)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Today Water Intake",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF5678C1),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 90,
                ),
                Stack(alignment: AlignmentDirectional.topStart ,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: RadialGraph(
                          completepercent: 10,
                          completecolor: Colors.blue,
                          incompletecolor: Colors.blue.shade50,
                          graphradius: 65,
                          graphwidth: 10,
                          startangle: -pi / 2,
                          maxangle: pi,
                          height: MediaQuery.of(context).size.height * .05,
                          width: MediaQuery.of(context).size.height * .05,
                        ),
                      ),
                    ),
                    Center(
                      child: Text("10 %", style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF5678C1),
                      fontWeight: FontWeight.bold),)
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
