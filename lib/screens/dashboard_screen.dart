import 'package:flutter/material.dart';
import 'package:stride/dummyData.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DashBoardScoreBoard(),
        Container(
          padding: EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height * 0.18,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.47,
                height: 30,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 30,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.47,
                height: 30,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

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
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
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
                    Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        child: Text('GraphHere')
                        // TODO: IMPLEMENT GRAPH HERE.
                        ),
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
