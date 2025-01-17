import 'package:flutter/material.dart';

import './screens/yourAcitvity_screen.dart';
import './screens/settings_screen.dart';
import './screens/tab_screen.dart';
import './screens/water_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stride',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor:  Color(0xFFF28649)
      ),
      home: TabScreen(),

      routes: {
        // '/': (context) => TabScreen(),
        '/yourActivity':(context)=>YourActivity(),
        '/settings':(context)=>SettingsScreen(),
        '/waterIntake':(context)=>WaterScreen(),
      
      },
    );
  }
}
