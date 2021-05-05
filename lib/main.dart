import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mediapp1/Reminder/Reminder.dart';
import 'package:mediapp1/dashboard/Base.dart';
import 'package:mediapp1/first.dart';
import 'package:mediapp1/medcard/medcardAdd.dart';

import 'BMI/Bmi.dart';
import 'medcard/medcardView.dart';
import 'signup.dart';
import 'signupD.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/signupD': (BuildContext context) => new SignupDPage(),
        '/base': (BuildContext context) => new Basepage(),
        '/medcardAdd': (BuildContext context) => new MedcardAddPage(),
        '/home': (BuildContext context) => new MyHomePage(),
        '/medcardView': (BuildContext context) => new MedcardViewPage(),
        '/reminder': (BuildContext context) => new ReminderPage(),
        '/bmi': (BuildContext context) => new BmiPage(),
      },
      home: new FirstPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      child: Text('Hello',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                      child: Text('There',
                          style: TextStyle(
                              color: Colors.lightGreenAccent[700],
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                      child: Text('.',
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'EMAIL',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green))),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green))),
                        obscureText: true,
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        alignment: Alignment(1.0, 0.0),
                        padding: EdgeInsets.only(top: 15.0, left: 20.0),
                        child: InkWell(
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Container(
                        height: 54.0,
                        width: 200.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.lightGreen[900],
                          color: Colors.green,
                          elevation: 9.0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/base');
                            },
                            child: Center(
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      /*     SizedBox(height: 40.0),
                      Container(
                        height: 20.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child:
                                    ImageIcon(AssetImage('assets/facebook.png')),
                              ),
                              SizedBox(width: 10.0),
                              Center(
                                child: Text('Log in with facebook',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')),
                              )
                            ],
                          ),
                        ),
                      )*/
                    ],
                  )),
              SizedBox(height: 27.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'New to MedCare ?',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 5.0, width: 5.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: Text(
                      'Register as a patient',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Are you Doctor?',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(width: 5.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signupD');
                    },
                    child: Text(
                      'Register as a doctor',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
