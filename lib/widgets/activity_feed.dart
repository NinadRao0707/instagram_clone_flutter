import 'package:flutter/material.dart';

class ActivityFeed extends StatefulWidget {
  const ActivityFeed({Key? key}) : super(key: key);

  @override
  _ActivityFeedState createState() => _ActivityFeedState();
}

class _ActivityFeedState extends State<ActivityFeed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 22,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1643898318949-b6fc0b049a47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
        ),
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 12.5,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: 'username',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' who you might know, is on Instagram',
              ),
              TextSpan(
                text: ' 12 hr',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        trailing: TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Follow',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            width: 65,
            height: 30,
          ),
        ),
      ),
    );
  }
}
