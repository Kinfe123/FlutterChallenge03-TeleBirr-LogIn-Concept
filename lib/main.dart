import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
      SystemChrome.setSystemUIOverlayStyle(
       SystemUiOverlayStyle(
         statusBarColor: Colors.transparent
         //color set to transperent or set your own color
      )
  );
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).padding.top),
          child: SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: Image(
                            image: AssetImage('images/v.png'),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.topRight,
                            width: 37,
                            height: 37,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),

                            margin: EdgeInsets.fromLTRB(0, 30, 10, 10),
                            // padding: EdgeInsets.only(left: 100),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          // decoration: BoxDecoration(
                          //   shape: BoxShape.circle,
                          //   color: Colors.white,
                          // ),

                          margin: EdgeInsets.fromLTRB(0, 30, 10, 10),
                          // padding: EdgeInsets.only(left: 100),
                          child: Icon(
                            Icons.question_mark_rounded,
                            color: Color.fromRGBO(0, 113, 188, 1),
                            size: 34,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Text(
                          //   'Hello there!👋',
                          //   style: TextStyle(
                          //       color: Colors.black45,
                          //       fontSize: 40.0,
                          //       fontWeight: FontWeight.bold,
                          //       fontFamily: 'Po'),
                          // ),
                          Row(
                            children: [
                              // Icon(
                              //   Icons.login,
                              //   color: Color.fromRGBO(0, 113, 188, 1),
                              //   size: 50,
                              // ),
                              // SizedBox(
                              //   width: 11,
                              // ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 113, 188, 1),
                                      fontSize: 60.0,
                                      fontFamily: 'Po',
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 70,
                            alignment: Alignment.topLeft,
                            // margin: EdgeInsets.only(left: 40),
                            child: Divider(
                              height: 5,
                              thickness: 3,
                              indent: 1,
                              color: Color.fromRGBO(0, 113, 188, 1),
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            height: 80,
                            margin: EdgeInsets.only(top: 27),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              // border: Border(top: BorderSide(width: 2.0))
                            ),
                            child: TextField(
                              cursorColor: Color.fromRGBO(0, 113, 188, 1),

                              style: TextStyle(
                                fontFamily: 'Po',
                                fontSize: 17.0,
                                letterSpacing: 0.4,
                              ),

                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                  prefixIcon: Container(
                                    margin: EdgeInsets.only(right: 2),
                                    child: Icon(
                                      Icons.phone_android,
                                      color: Color.fromRGBO(0, 113, 188, 1),
                                    ),
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12, 40, 0, 10),
                                  hintText: 'Mobile Number',
                                  labelText: 'Mobile  Number',
                                  hintStyle: TextStyle(
                                    fontSize: 20.0,
                                    color: Color.fromARGB(255, 136, 134, 134),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color:
                                              Color.fromRGBO(0, 113, 188, 1)),
                                      borderRadius:
                                          BorderRadius.circular(12.0))),

                              controller: _emailController,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 80,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              // border: Border(top: BorderSide(width: 2.0))
                            ),
                            child: TextField(
                              cursorColor: Color.fromRGBO(0, 113, 188, 1),
                              obscureText: true,
                              style: TextStyle(
                                fontFamily: 'Po',
                                fontSize: 17.0,
                                letterSpacing: 0.4,
                              ),

                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                  prefixIcon: Container(
                                    margin: EdgeInsets.only(right: 3),
                                    child: Icon(
                                      Icons.lock,
                                      color: Color.fromRGBO(0, 113, 188, 1),
                                    ),
                                  ),
                                  suffixIcon: Container(
                                    child: Icon(Icons.remove_red_eye_rounded),
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12, 40, 0, 10),
                                  hintText: 'Password',
                                  labelText: 'Password',
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 136, 134, 134),
                                    fontSize: 20.0,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color:
                                              Color.fromRGBO(0, 113, 188, 1)),
                                      borderRadius:
                                          BorderRadius.circular(12.0))),

                              controller: _emailController,
                            ),
                          ),
                          Container(
                            // alignment: Alignment.topLeft,
                            margin: EdgeInsets.fromLTRB(10, 3, 0, 20),
                            child: Text(
                              'Forget password?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 64, 110),
                                  fontFamily: 'Po',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0),
                            ),
                          ),
                          SizedBox(
                            height: 57,
                          ),
                          Container(
                            width: double.infinity,
                            child: TextButton(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                                  child: Text("Login",
                                      style: TextStyle(
                                          fontFamily: 'Po',
                                          fontSize: 26,
                                          color: Colors.white,
                                          letterSpacing: 1.5)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromRGBO(0, 113, 188, 1)),
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromRGBO(0, 113, 188, 1)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            side: BorderSide(color: Color.fromRGBO(0, 113, 188, 1))))),
                                onPressed: () => null),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'Dont have an account? ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      fontFamily: 'PoM',
                                      color: Colors.black45)),
                              TextSpan(
                                  text: 'Create One',
                                  style: TextStyle(
                                      fontFamily: 'PoM',
                                      fontSize: 15,
                                      // backgroundColor: Colors.deepPurple,
                                      color: Color.fromRGBO(0, 113, 188, 1))),
                            ])),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage('images/telebirr.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
