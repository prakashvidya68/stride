import 'package:flutter/material.dart';
import 'dart:math';
import 'package:stride/dummyData.dart';
import 'package:stride/widgets/raidalGraph.dart';

class WaterScreen extends StatefulWidget {
  @override
  _WaterScreenState createState() => _WaterScreenState();
}

class _WaterScreenState extends State<WaterScreen> {
  var waterIntake = dummyUserScore.waterIntake;

  var maxWaterIntake = dummyUserScore.maxWaterIntake;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "H2O Intake",
            style: TextStyle(color: Color(0xFFF28649)),
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 110,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  waterIntake > maxWaterIntake
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9.0),
                            child: RadialGraph(
                              completepercent: ((waterIntake - maxWaterIntake) /
                                      maxWaterIntake) *
                                  100,
                              completecolor: Colors.green,
                              incompletecolor: Colors.green.shade50,
                              graphradius: 85,
                              graphwidth: 8,
                              startangle: 0,
                              maxangle: 2 * pi,
                              height: MediaQuery.of(context).size.height * .05,
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
                        completepercent: (waterIntake / maxWaterIntake) * 100,
                        completecolor: Colors.blue,
                        incompletecolor: Colors.blue.shade50,
                        graphradius: 73,
                        graphwidth: 8,
                        startangle: 0,
                        maxangle: 2 * pi,
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.height * .05,
                      ),
                    ),
                  ),
                  Center(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          // if ((widget.waterIntake / widget.maxWaterIntake) * 100 < 100)
                          waterIntake += 1;
                        });
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
