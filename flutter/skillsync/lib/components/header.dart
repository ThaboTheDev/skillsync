import 'package:flutter/material.dart';

class Header extends StatefulWidget{
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
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
                Center(
                  child: IconButton(
                    onPressed: () {}, 
                    iconSize: 50,
                    icon: Icon(Icons.account_circle),
                  ),
                ),
              ],
            ),
            Text('Search for bookins or meetings :'),
          ],
        ),
      ),
    );
  }
}