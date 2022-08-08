import 'package:flutter/material.dart';
import 'package:logindigain/mainpage/modul.dart';
import 'package:logindigain/mainpage/settingpage.dart';
import 'package:logindigain/mainpage/alarmpage.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  child: Image.asset("image/1.jpg",fit: BoxFit.fill,)

                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar:ChoisBar()
    );
  }
}
