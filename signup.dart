import 'package:ati_home/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Account());
}

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      routes: {
        '/login': (context) => Login(),
      },
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignUp> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.83,
                  child: ElevatedButton(
                    onPressed: () {
                      //! houni t7ot chnya taaml button edheya
                    },
                    child: Text(
                      'EDIT YOUR PROFILE',
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
                height: 20,
              ),
              CircleAvatar(
                radius: 70,
                //! houni image li tji fi doura
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Personal Information's",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                child: Material(
                    color: Colors.white,
                    elevation: 15,
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 150,
                      width: 350,
                      child: SizedBox(
                        child: Row(children: [
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 130,
                            height: 170,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration:
                                      InputDecoration(hintText: 'First Name'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Your Birthday'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          SizedBox(
                            width: 130,
                            height: 170,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration:
                                      InputDecoration(hintText: 'Last Name'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration:
                                      InputDecoration(hintText: 'Phone Number'),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Confident information's",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              Container(
                child: Material(
                    color: Colors.white,
                    elevation: 15,
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 170,
                      width: 350,
                      child: SizedBox(
                        child: Center(
                          child: SizedBox(
                            height: 170,
                            width: 200,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Enter Your E-mail'),
                                ),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: 'Enter Your Password'),
                                ),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: 'Confirme Your Password'),
                                ),
                              ],
                            ),
                          ),
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
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'SAVE',
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
          ),
        ),
      ),
    );
  }
}
