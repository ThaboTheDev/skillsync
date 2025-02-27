import 'package:flutter/material.dart';
import 'package:skillsync/screens/mentorsScreen.dart';
import 'package:skillsync/screens/profilescreen.dart';
import 'package:skillsync/screens/settingsscreen.dart';

class Mainscreen  extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {

  int _currentIndex = 0;

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return Mentorsscreen();

      case 1:
        return Profilescreen();

      case 2:
        return Settingsscreen();

      default:
        return Mainscreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreen(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}