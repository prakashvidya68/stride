import 'package:flutter/material.dart';

class LevelInfo extends StatefulWidget {
  @override
  _LevelInfoState createState() => _LevelInfoState();
}

class _LevelInfoState extends State<LevelInfo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .18,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF5678C1)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text("Bar Widget Here"),
        ),
      ),
    );
  }
}
