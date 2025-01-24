import 'package:flutter/material.dart';

class Mentorsscreen extends StatefulWidget{
  const Mentorsscreen({super.key});

  @override
  State<Mentorsscreen> createState() => _MentorsscreenState();
}

class _MentorsscreenState extends State<Mentorsscreen> {

  Widget _topPart() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Text(
                    'Welcome, user',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {}, 
                  iconSize: 50,
                  icon: Icon(Icons.account_circle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _topPart(),
        ],
      ),
    );
  }
}