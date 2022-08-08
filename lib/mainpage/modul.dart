import 'package:flutter/material.dart';
import 'package:logindigain/mainpage/findpage.dart';
import 'package:logindigain/mainpage/friendpage.dart';
import 'package:logindigain/mainpage/mainpage.dart';
import 'package:logindigain/mainpage/message.dart';

class ChoisBar extends StatelessWidget {
  const ChoisBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage()));},
            icon: Icon(Icons.home_filled),
          ),
          IconButton(
            onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FriendPage()));},
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MessagePage()));},
            icon: Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FindPage()));},
            icon: Icon(Icons.search_rounded),
          ),
        ],
      ),
    );
  }
}

