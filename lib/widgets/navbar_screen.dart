import 'package:ai_health_care/screens/message_screen.dart';
import 'package:ai_health_care/screens/schedule_screen.dart';
import 'package:ai_health_care/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screen =[
    //Home Screen
    HomeScreen(),
    //Message Screen
    MessagesScreen(),
    //Schedule Screen
    ScheduleScreen(),
    //Setting Screen
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor:Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: "Home"
            ),BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: "Messages"
            ),BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
            label: "Schedule"
            ),BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Settings"
            ),
          ],
        ),
      ),
    );
  }
}
