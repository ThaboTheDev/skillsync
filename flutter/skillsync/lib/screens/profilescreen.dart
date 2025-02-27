import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget{
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Center(
                  child: IconButton(
                    onPressed: () {}, 
                    iconSize: 100,
                    icon: Icon(Icons.account_circle),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("@FullName"),
                    Text("email@emailaddress.com"),
                  ],
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: Icon(Icons.edit), 
              label: const Text("Edit"),
            ),
            const SizedBox(height: 10,),
            const Text(
              "Details:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}