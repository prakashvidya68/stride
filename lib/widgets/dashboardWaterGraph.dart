import 'package:flutter/material.dart';
import 'dart:math';
import 'package:stride/widgets/raidalGraph.dart';



class WaterInfo extends StatefulWidget {
  double maxWaterIntake;
  double waterIntake;
  WaterInfo({this.waterIntake, this.maxWaterIntake});

  @override
  _WaterInfoState createState() => _WaterInfoState();
}

class _WaterInfoState extends State<WaterInfo> {
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
            padding: EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height * .30,
            width: MediaQuery.of(context).size.width * 0.48,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF5678C1)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "H2O Intake",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Color(0xFF5678C1),
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          // if ((widget.waterIntake / widget.maxWaterIntake) * 100 < 100)
                          widget.waterIntake += 1;
                        });
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                Text(
                  "Your Daily Intake.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    height: -2,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    widget.waterIntake > widget.maxWaterIntake
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 9.0),
                              child: RadialGraph(
                                completepercent: ((widget.waterIntake -
                                            widget.maxWaterIntake) /
                                        widget.maxWaterIntake) *
                                    100,
                                completecolor: Colors.green,
                                incompletecolor: Colors.green.shade50,
                                graphradius: 65,
                                graphwidth: 10,
                                startangle: -pi / 2,
                                maxangle: pi,
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                width: MediaQuery.of(context).size.height * .05,
                              ),
                            ),
                          )
                        : SizedBox(
                            height: 0,
                          ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: RadialGraph(
                          completepercent:
                              (widget.waterIntake / widget.maxWaterIntake) *
                                  100,
                          completecolor: Colors.blue,
                          incompletecolor: Colors.blue.shade50,
                          graphradius:
                              widget.waterIntake > widget.maxWaterIntake
                                  ? 52
                                  : 65,
                          graphwidth: 10,
                          startangle: -pi / 2,
                          maxangle: pi,
                          height: MediaQuery.of(context).size.height * .05,
                          width: MediaQuery.of(context).size.height * .05,
                        ),
                      ),
                    ),
                    Center(
                        child: Text(
                      "${(widget.waterIntake / widget.maxWaterIntake) * 100} %",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Color(0xFF5678C1),
                          fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.013,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Your have drank ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          height: -1,
                          color: Colors.grey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '${widget.waterIntake}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              height: -1,
                              color: Colors.blue,
                            ),
                          ),
                          TextSpan(
                            text: ' lts',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              height: -1,
                              color: Colors.grey,
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
