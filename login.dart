import 'package:ati_home/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      routes: {
        '/home': (context) => Home(),
      },
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffC1C1C2), Color(0xffD9D9D9)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Material(
                    color: Colors.white,
                    elevation: 15,
                    borderRadius: BorderRadius.circular(60),
                    child: SizedBox(
                      height: 420,
                      width: 320,
                      child: SizedBox(
                        width: 160,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 50,
                              child: TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'USER NAME',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 250,
                              height: 50,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'PASSWORD',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                                height: 45,
                                width: MediaQuery.of(context).size.width * 0.63,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //! houni t7ot chnya taaml button edheya
                                    Navigator.pushNamed(context, '/home');
                                  },
                                  child: Text(
                                    'Sign In ',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation:
                                        15, //! houni shadow li taht boutons
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.green,
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 30,
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  " FORGOT YOUR PASSWORD ",
                                  style: TextStyle(
                                    color: Colors.green,
                                    decoration: TextDecoration.underline,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 40,
                          child: Image.asset('assets/image/homegreen.png'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          " Powered by ATI ",
                          style: TextStyle(
                            fontSize: 9,
                            color: const Color(0xFF85898E),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          " Smart and Lighting ",
                          style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(133, 137, 142, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
