import 'dart:math';

import 'package:chat_page/utils/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.centerRight,
              children: [
              Positioned(
              bottom: 30,
              left: 22,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
            ),
            Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
          ]),
      ),

      title: Row(
        children: [
          CircleAvatar(
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Mr. Flutter',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam_outlined,
              ),
              iconSize: 33,
              color: Colors.black87,
              alignment: Alignment.center,
            ),
            IconButton(
              icon: Icon(
                Icons.call_rounded,
              ),
              iconSize: 30,
              color: Colors.black87,
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
    body: Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/wp background.jpg'),
    fit: BoxFit.cover,
    )),
    //insted of using column we can use ListView.builder with itemCount = number of messages we have in if they were stored in a list or database
    child: SingleChildScrollView(
    padding: EdgeInsets.all(5),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
    width: 80,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.white60,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'Today',
    style: TextStyle(
    color: Colors.black,
    // fontWeight: FontWeight.bold
    ),
    ),
    ],
    ),
    )
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:12 PM',
    msg: 'Hello Mr. Flutter',
    sentByMe: true),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:15 PM',
    msg: 'Hello Mr Karim. How are you today?',
    sentByMe: false),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:16 PM',
    msg: 'I am fine thanks for asking. I have done something very intersting today. I learned how to make a whatsapp UI clone using flutter',
    sentByMe: true),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:16 PM',
    msg: 'Excellent Karim. Looks like you are enjoying flutter so much',
    sentByMe: false),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:18 PM',
    msg: 'All I have to do now is take a screen recording of this UI',
    sentByMe: true),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:18 PM',
    msg: 'Upload it to google drive',
    sentByMe: true),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:18 PM',
    msg: 'Share this project on github',
    sentByMe: true),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:19 PM',
    msg: 'And finally submit it',
    sentByMe: true),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:21 PM',
    msg: 'Good luck Karim!',
    sentByMe: false),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: [
    ChatBubble(
    isRead: true,
    time: '10:22 PM',
    msg: 'I am sure you will be a great flutter developer one day',
    sentByMe: false),
    ],
    ),
    ],
    ),
    ),
    ),
    bottomNavigationBar: Container(
    height: 80,
    width: double.infinity,
    color: Colors.grey[200],
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Padding(
    padding: const EdgeInsets.only(
    top: 8,
    left: 8,
    right: 8,
    bottom: 25,
    ),
    child: Row(
    children: [
    Icon(
    Icons.add,
    size: 30,
    ),
    Expanded(
    child: Container(
    height: 40,
    child: TextField(
    cursorColor: Colors.green,
    decoration: InputDecoration(
    suffixIcon: Icon(
    Icons.gif_box,
    color: Colors.grey,
    ),
    fillColor: Colors.white,
    filled: true,
    focusColor: Colors.grey,
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(
    color: Colors.white, width: 1.0),
    )),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(4.0),
    child: Icon(Icons.camera_alt_outlined,color: Colors.black87,),
    ),
    Padding(
    padding: const EdgeInsets.all(4.0),
    child: Icon(Icons.mic_none_outlined,color: Colors.black87,),
    )
    ],
    ),
    ),
    ],
    ),
    ),
    drawer: Drawer(
    child: Column(
    children: [Text('hello')],
    )
    ,
    )
    ,
    );
  }
}
