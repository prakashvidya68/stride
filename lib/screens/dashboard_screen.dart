import 'package:flutter/material.dart';
import 'package:stride/dummyData.dart';
import 'package:stride/widgets/levelInfo.dart';
import '../widgets/dashboardScoreBoard.dart';

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
      ],
    );
  }
}

class MiddleRow extends StatelessWidget {
  const MiddleRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8.0, left: 2, right: 2),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: MediaQuery.of(context).size.width * 0.37,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5.0, left: 5, right: 5),
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.amber,
                        size: 30,
                      ),
                    ),
                    Center(
                        child: Text(
                      (dummyUserScore.stepsToday / 1150).toStringAsFixed(2),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 23,
                          color: Colors.amber,
                          fontWeight: FontWeight.w500),
                    )),
                    Center(
                        child: Text(
                      "Coins Earned Today",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w100),
                    ))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: MediaQuery.of(context).size.width * 0.37,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5.0, left: 5, right: 5),
                      child: Icon(
                        Icons.ondemand_video,
                        color: Colors.brown,
                        size: 30,
                      ),
                    ),
                    Center(
                        child: Text(
                      'Watch\n&\nEarn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w100),
                    ))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: MediaQuery.of(context).size.width * 0.37,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5.0, left: 5, right: 5),
                      child: Icon(
                        Icons.share,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Center(
                        child: Text(
                      'Share\n&\nEarn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w100),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
