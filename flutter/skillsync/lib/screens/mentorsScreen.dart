import 'package:flutter/material.dart';
// import 'package:search_bar/search_bar.dart';

class Mentorsscreen extends StatefulWidget{
  const Mentorsscreen({super.key});

  @override
  State<Mentorsscreen> createState() => _MentorsscreenState();
}

class _MentorsscreenState extends State<Mentorsscreen> {

  Widget _topPart() {
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

  Widget _upcomingMeeting() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.all(
            Radius.circular(20)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Start time:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'time',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'End time:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'time',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Title:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _booking() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20)
          ),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bookings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('More')
                  ),
                ],
              ),
              Center(
                child: Icon(Icons.book,size: 70,),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _meetings() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.all(
            Radius.circular(20)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meetings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('More'),
                  ),
                ],
              ),
              Center(
                child: Icon(Icons.meeting_room, size: 70,),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _topPart(),
          _upcomingMeeting(),
          const Text(
            'Activities:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          _booking(),
          _meetings(),
        ],
      ),
    );
  }
}