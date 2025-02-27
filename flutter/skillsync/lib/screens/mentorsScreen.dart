import 'package:flutter/material.dart';
import 'package:skillsync/components/events_bubble.dart';
import 'package:skillsync/components/header.dart';
import 'package:skillsync/components/upcoming_events.dart';

class Mentorsscreen extends StatefulWidget{
  const Mentorsscreen({super.key});

  @override
  State<Mentorsscreen> createState() => _MentorsscreenState();
}

class _MentorsscreenState extends State<Mentorsscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(),
          UpcomingEvents(),
          const Text(
            'Activities:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                EventsBubble(title: "Bookings", bubbleIcon: Icon(Icons.book,size: 70,)),
                EventsBubble(title: "Meetings", bubbleIcon: Icon(Icons.meeting_room, size: 70,)),
                EventsBubble(title: "Events", bubbleIcon: Icon(Icons.event,size: 70,)),
                // EventsBubble(title: "Meetings", bubbleIcon: Icon(Icons.meeting_room, size: 70,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}