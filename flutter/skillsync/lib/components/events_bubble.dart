import 'package:flutter/material.dart';

class EventsBubble extends StatelessWidget{
  final title;
  final bubbleIcon;

  const EventsBubble({
    super.key, 
    required this.title,
    required this.bubbleIcon
  });
  
  @override
  Widget build(BuildContext context) {
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
                    title,
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
                child: bubbleIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}