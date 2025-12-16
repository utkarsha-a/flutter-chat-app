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

    Widget _stories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          // "Your Story" item
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFe9eaec),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      size: 33,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 75,
                  child: Align(
                    child: Text(
                      'Your Story',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Other users' stories
          Row(
            children: List.generate(storyList.length, (index) {
              final story = storyList[index];
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Stack(
                        children: <Widget>[
                          story['hasStory'] == true
                              ? Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 3,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            story['imageUrl'],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        story['imageUrl'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                          story['isOnline'] == true
                              ? Positioned(
                                  top: 38,
                                  left: 42,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF66BB6A),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xFFFFFFFF),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 75,
                      child: Align(
                        child: Text(
                          story['name'],
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _conversations(BuildContext context) {
    return Column(
      children: List.generate(conversationList.length, (index) {
        final convo = conversationList[index];

        return InkWell(
          onTap: () {
            // later you can navigate to a chat screen
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Stack(
                    children: <Widget>[
                      convo['hasStory'] == true
                          ? Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.blueAccent,
                                  width: 3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        convo['imageUrl'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    convo['imageUrl'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      convo['isOnline'] == true
                          ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF66BB6A),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xFFFFFFFF),
                                    width: 3,
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      convo['name'],
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 135,
                      child: Text(
                        "${convo['message']} - ${convo['time']}",
                        style: TextStyle(
                          fontSize: 15,
              
                          color: const Color(0xFF000000).withValues(alpha: 0.7),

                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }


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
               const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _searchController,
                  cursorColor: const Color(0xFF000000),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: const Color(0xFF000000).withValues(alpha: 0.5),
                    ),
                    hintText: "Search",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _stories(),
              const SizedBox(height: 20),
              _conversations(context),

            ],
          ),
        ),
      ),
    );
  }

}