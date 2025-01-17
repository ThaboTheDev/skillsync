import 'package:flutter/material.dart';

class Mainscreen  extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SkillSync',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/login');
            }, 
            icon: Icon(Icons.exit_to_app)
          ),
        ],
      ),
      body: Center(child: Text('Test page'),),
    );
  }
}