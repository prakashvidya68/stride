import 'package:flutter/material.dart';
import 'package:stride/dummyData.dart';

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
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber.withOpacity(0.13)),
                        child: Icon(
                          Icons.attach_money,
                          color: Colors.amber,
                          size: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 3),
                      child: Text(
                        "Coins Earned Today",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Color(0xFF5678C1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        (dummyUserScore.stepsToday / 1150).toStringAsFixed(2) +" Coins",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 23,
                            color: Colors.amber,
                            fontWeight: FontWeight.w500),
                      ),
                    )
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
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.brown.withOpacity(0.13)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.ondemand_video,
                            color: Colors.brown,
                            size: 27,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 3),
                      child: Text(
                        "Watch & Earn",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Color(0xFF5678C1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,),
                      child: Text(
                        "Watch relevent ads & increase your coins.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Colors.grey,
                            ),
                      ),
                    ),

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
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(0.13)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.share,
                            color: Colors.blue,
                            size: 27,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 3),
                      child: Text(
                        "Share & Earn",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Color(0xFF5678C1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,),
                      child: Text(
                        "Invite yours friends & get rewarded.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Colors.grey,
                            ),
                      ),
                    ),
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
