import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(color: Color(0xFFF28649)),
        ),
      ),
      body: ListView(
        children: <Widget>[
          
        ],
      ),
    );
  }
}
