import 'package:flutter/material.dart';
import 'package:landing_page/landing_page.dart';
import 'package:landing_page/option.dart';
import 'package:landing_page/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [
    LandingPage(),
    Options(),
    Profile(),
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.teal[50],
        elevation: 5,
        // selectedIconTheme: IconThemeData(size: 45),
        onTap: _selectPage,
        unselectedItemColor: Colors.purple[200],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurpleAccent,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 42,
            ),
            // ignore: deprecated_member_use
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view_rounded,
              size: 35,
            ),
            // ignore: deprecated_member_use
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              size: 35,
            ),
            // ignore: deprecated_member_use
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
