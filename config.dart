import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Config());
}

class Config extends StatelessWidget {
  const Config({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Systeme(),
    );
  }
}

class Systeme extends StatefulWidget {
  @override
  State<Systeme> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Systeme> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xffD9D9D9),
          color: Color(0xff86C663),
          // ignore: prefer_const_literals_to_create_immutables
          items: <Widget>[
            Icon(Icons.wb_auto, size: 30),
            Icon(Icons.add, size: 30),
            Icon(Icons.waving_hand, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
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
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "  Configuration Systeme  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Material(
                    color: Colors.white,
                    elevation: 15,
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 200,
                      width: 350,
                      child: SizedBox(
                        child: Center(
                          child: SizedBox(
                              height: 170,
                              width: 250,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'Enter your WIFI’S Name'),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText:
                                              'Confirmed  your WIFI’S Password'),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.43,
                  child: ElevatedButton(
                    onPressed: () {
                      //! houni t7ot chnya taaml button edheya
                    },
                    child: Text(
                      'SEND',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 15, //! houni shadow li taht boutons
                      shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.green,
                    ),
                  )),
            ],
          )),
        ),
      ),
    );
  }
}
