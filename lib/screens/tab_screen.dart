import 'package:flutter/material.dart';
import 'package:stride/icons/icecons_icons.dart';
import '../animation/animation_bottom_bar.dart';
import './dashboard_screen.dart';
import './transaction_screen.dart';
import './market_screen.dart';
import './buddies_screen.dart';
import './settings_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Widget> _pageOptions = [
    DashboardScreen(),
    TransactionScreen(),
    MarketScreen(),
    BuddiesScreen(),
    SettingsScreen()
  ];

  int _selectedPage = 0;

  String _selectedTitle(int pageNo) {
    String s;
    switch (pageNo) {
      case 0:
        s = "Dashboard";
        break;
      case 1:
        s = "Transaction";
        break;
      case 2:
        s = "Market";
        break;
      case 3:
        s = "Buddies";
        break;
      case 4:
        s = "Settings";
        break;
    }
    return s;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          _selectedTitle(_selectedPage),
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icecons.settings,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/settings');
            },
          ),
        ],
      ),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: AnimatedBottomBar(
          barItems: [
            BarItem(
              text: "Dashboard",
              iconData: Icecons.grid_dynamic_1,
              color: Color(0xFFF28649),
            ),
            BarItem(
              text: "Transaction",
              iconData: Icons.credit_card,
              color: Color(0xFFF28649),
            ),
            BarItem(
              text: "Market",
              iconData: Icecons.bag,
              color: Color(0xFFF28649),
            ),
            BarItem(
              text: "Buddies",
              iconData: Icons.person_outline,
              color: Color(0xFFF28649),
            ),
          ],
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(fontSize: 12.0, iconSize: 24.0),
          onBarTap: (index) {
            setState(() {
              _selectedPage = index;
            });
          }),
          floatingActionButton: FloatingActionButton(
            // mini: true,
            child: Icon(Icons.add,color: Colors.white,),
            onPressed: (){},
          ),
    );
  }
}
