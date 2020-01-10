import 'package:flutter/material.dart';

class WaterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "WaterLog",
          style: TextStyle(color: Color(0xFFF28649)),
        ),
      ),
      body: Container(),
    );
  }
}
