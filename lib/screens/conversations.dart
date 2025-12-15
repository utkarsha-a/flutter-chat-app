import 'package:flutter/material.dart';

class Conversations extends StatefulWidget {
  const Conversations({super.key});

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> storyList = [
    {
      "name": "Nishad",
      "imageUrl": "https://randomuser.me/api/portraits/men/31.jpg",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Dinesh",
      "imageUrl": "https://randomuser.me/api/portraits/men/81.jpg",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Mihika",
      "imageUrl": "https://randomuser.me/api/portraits/women/49.jpg",
      "isOnline": true,
      "hasStory": false,
    },
    {
      "name": "Eshan",
      "imageUrl": "https://randomuser.me/api/portraits/men/35.jpg",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Gargi",
      "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Rishi",
      "imageUrl": "https://randomuser.me/api/portraits/men/36.jpg",
      "isOnline": false,
      "hasStory": true,
    },
  ];

  final List<Map<String, dynamic>> conversationList = [
    {
      "name": "Nishad",
      "imageUrl": "https://randomuser.me/api/portraits/men/31.jpg",
      "isOnline": true,
      "hasStory": true,
      "message": "Where are you?",
      "time": "5:00 pm"
    },
    {
      "name": "Dinesh",
      "imageUrl": "https://randomuser.me/api/portraits/men/81.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "It's good!!",
      "time": "7:00 am"
    },
    {
      "name": "Mihika",
      "imageUrl": "https://randomuser.me/api/portraits/women/49.jpg",
      "isOnline": true,
      "hasStory": false,
      "message": "I love you too!",
      "time": "6:50 am"
    },
    {
      "name": "Eshan",
      "imageUrl": "https://randomuser.me/api/portraits/men/35.jpg",
      "isOnline": true,
      "hasStory": true,
      "message": "Got to go!! Bye!!",
      "time": "yesterday"
    },
    {
      "name": "Gargi",
      "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Sorry, I forgot!",
      "time": "2nd Feb"
    },
    {
      "name": "Rishi",
      "imageUrl": "https://randomuser.me/api/portraits/men/36.jpg",
      "isOnline": false,
      "hasStory": true,
      "message": "No, I won't go!",
      "time": "28th Jan"
    },
    {
      "name": "Dipika",
      "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Hahahahahaha",
      "time": "25th Jan"
    },
    {
      "name": "Elina",
      "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Been a while!",
      "time": "15th Jan"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: ListView(
            children: [
              // Top App Bar Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://randomuser.me/api/portraits/men/11.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Text(
                    "Chats",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.edit),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}