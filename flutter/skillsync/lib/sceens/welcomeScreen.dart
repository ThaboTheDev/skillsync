import 'package:flutter/material.dart';
import 'package:skillsync/sceens/homescreen.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  void initState() {
    super.initState();

    // Wait 3 seconds, then navigate
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    });
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Image.asset('lib/assets/images/logo2.png'),
      ),
    );
  }
}