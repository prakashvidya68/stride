import 'package:flutter/material.dart';
import 'package:stride/dummyData.dart';
import '../widgets/raidalGraph.dart';
import 'dart:math';

// ScoreBoard Widget (First Component of DashBoard)
class DashBoardScoreBoard extends StatelessWidget {
  const DashBoardScoreBoard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
              flex: 1,
              child: RotatedBox(
                quarterTurns: -1,
                child: Text('Stride',
                    style: TextStyle(
                      fontFamily: 'Audiowide',
                      height: 2,
                      fontSize: width * 0.065,
                      color: Color(0xFFF28649),
                    )),
              )),
          Flexible(
            flex: 6,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            dummyUserScore.stepsToday.toString(),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 50,
                              color: Color(0xFF5678C1),
                            ),
                          ),
                          Text(
                            'steps today',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                dummyUserScore.kCalBurnt.toString(),
                                style: TextStyle(
                                    color: Color(0xFFF28649), fontSize: 18),
                              ),
                              Text(
                                ' Kcal ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                dummyUserScore.distWalkedTday.toString(),
                                style: TextStyle(
                                    color: Color(0xFFF28649), fontSize: 18),
                              ),
                              Text(
                                ' Km’ s.',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'You have to  walk ${(dummyUserScore.targetDist - dummyUserScore.distWalkedTday).round()} Km’s more',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Level ${dummyUserScore.currentLevel}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 22,
                              color: Color(0xFF5678C1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: RadialGraph(
                            graphwidth: 10,
                            completepercent: 100,
                            completecolor: Color(0xFF5678C1),
                            incompletecolor: Colors.white,
                            maxangle: -pi,
                            graphradius:
                                MediaQuery.of(context).size.height * .0905 + 11,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: RadialGraph(
                            graphwidth: 10,
                            completepercent: 100,
                            completecolor: Color(0xFFF28649),
                            incompletecolor: Colors.white,
                            maxangle: -pi,
                            graphradius:
                                MediaQuery.of(context).size.height * .0905,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.height * 0.05,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
