import 'package:ati_home/pages/first.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Acceuill(),
      routes: {
        '/first': (context) => const First(),
      },
    );
  }
}

class Acceuill extends StatefulWidget {
  const Acceuill({super.key});

  @override
  State<Acceuill> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Acceuill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffc8e2ba), Color(0xff86C663), Color(0xff56B224)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset(
                  'assets/image/home.png',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Text(
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
              const Text(
                " Powered by ATI ",
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Text(
                " Smart and Lighting ",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
