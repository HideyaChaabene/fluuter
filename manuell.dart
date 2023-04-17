import 'package:ati_home/pages/auto.dart';
import 'package:ati_home/pages/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(Manu());
}

class Manu extends StatelessWidget {
  const Manu({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyManu(),
      routes: {
        '/add': (context) => Home(),
        'auto':(context) => Auto(),
        '/manuel':(context) =>Manu() ,
      },
    );
  }
}

class MyManu extends StatefulWidget {
  @override
  State<MyManu> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyManu> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xffD9D9D9),
          color: Color(0xff86C663),
          // ignore: prefer_const_literals_to_create_immutables
          items: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/auto');
              },
              child: Icon(
                Icons.wb_auto,
                size: 30,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add');
              },
              child: Icon(Icons.add, size: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/manuel');
              },
              child: Icon(Icons.waving_hand, size: 30),
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffC1C1C2), Color(0xffD9D9D9)],
            ),
          ),
          child: Center(
            child: Text(
              'ADD YOUR DEVICE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
    );
  }
}