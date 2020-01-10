import 'package:flutter/material.dart';

class YourActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,        
        title: Text(
          "Your Activity",
          style: TextStyle(color: Color(0xFFF28649)),
        ),
      ),
    );
  }
}
