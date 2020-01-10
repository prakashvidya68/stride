

import 'package:flutter/material.dart';

import 'package:stride/widgets/levelInfo.dart';
import '../widgets/dashboardScoreBoard.dart';
import '../widgets/dashboardMiddleRow.dart';
import '../dummyData.dart';
import '../widgets/dashboardWaterGraph.dart';

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
          child: WaterInfo(
            waterIntake: dummyUserScore.waterIntake,
            maxWaterIntake: dummyUserScore.maxWaterIntake,
          ),
        ),
      ],
    );
  }
}

