import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/activity_feed.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  _LikeScreenState createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          'Activity',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 8,
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 22,
                child: SvgPicture.asset(
                  'assets/ic_follow_request.svg',
                  color: primaryColor,
                ),
              ),
              title: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 12.5,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'vkrishna2090, aamiransari101, sreekeshiyer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' and',
                    ),
                    TextSpan(
                      text: ' 32 others',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' started following you.',
                    ),
                    TextSpan(
                      text: ' 4 h',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 20,
              left: 17,
            ),
            child: const Text(
              'Today',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
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
                  children: <TextSpan>[
                    TextSpan(
                      text: 'vkrishna2090, aamiransari101, sreekeshiyer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' and',
                    ),
                    TextSpan(
                      text: ' 32 others',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' started following you.',
                    ),
                    TextSpan(
                      text: ' 4 h',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const ActivityFeed(),
          Container(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 20,
              left: 17,
            ),
            child: const Text(
              'This month',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const ActivityFeed(),
          Container(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 20,
              left: 17,
            ),
            child: const Text(
              'Earlier',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const ActivityFeed(),
          const ActivityFeed(),
          const ActivityFeed(),
          const ActivityFeed(),
        ],
      ),
    );
  }
}
