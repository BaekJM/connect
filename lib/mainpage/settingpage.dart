import 'package:flutter/material.dart';
import 'package:logindigain/mainpage/alarmpage.dart';
import 'package:logindigain/mainpage/modul.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        automaticallyImplyLeading : false,
        title: Text('Connet',style: TextStyle(fontSize: 30,color: Colors.black),),
        actions: [
          IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AlarmPage()));},
            icon: Icon(Icons.connecting_airports),
          ),
          IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
          child: Text('Setting Page')
      ),
      bottomNavigationBar: ChoisBar(),
    );
  }
}