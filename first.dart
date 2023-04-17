import 'package:ati_home/pages/login.dart';
import 'package:ati_home/pages/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const First());
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirst(),
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
      },
    );
  }
}

class MyFirst extends StatefulWidget {
  @override
  State<MyFirst> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyFirst> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffD6D5D5), Color(0xffEEEDED)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 165,
                child: Image.asset('assets/image/homegreen.png'),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.73,
                  child: ElevatedButton(
                    onPressed: () {
                      //! houni t7ot chnya taaml button edheya
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Connecte to your Account',
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
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.60,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text(
                    " Create Account ",
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
