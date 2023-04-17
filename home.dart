// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:ati_home/pages/auto.dart';
import 'package:ati_home/pages/manuell.dart';
import 'package:ati_home/pages/signup.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      initialRoute: '/',
      routes: {
        '/auto': (context) => Auto(),
        '/add': (context) => Home(),
        '/manuel': (context) => Manu(),
        '/account': (context) => SignUp(),
      },
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff86C663),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            Icon(Icons.home_outlined),
            Icon(Icons.add),
            Icon(Icons.wb_auto),
            Icon(Icons.waving_hand),
            Icon(Icons.perm_identity),
          ],
          onTap: (index) {
            if (index == 0) {
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Image.asset('assets/image/home.png'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'WELCOME TO USE ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xffffffff),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      " Powered by ATI ",
                      style: TextStyle(
                        fontSize: 17,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      " Smart and Lighting ",
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              );
            } else if (index == 1) {
              // Code à exécuter lorsque l'icône Paramètres est appuyée

            }
          },
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffC1C1C2), Color(0xffD9D9D9)],
            ),
          ),
          child: Center(),
        ),
      ),
    );
  }
}
