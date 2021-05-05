import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email; //Email Address
  String _password; //Password
  String _nic; //NIC
  String _name; //full name
  String _dob; //date of birth
  String _cnum; //contact number

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.all(10.0),
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: Column(children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(260.0, 70.0, 0.0, 0.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'EMAIL',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          maxLines: 1,
                          maxLength: 10,
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'Email Cannot Be Empty';
                            }
                            return null;
                          },
                          onSaved: (text) {
                            _email = text;
                          }),
                      SizedBox(height: 5.0),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'PASSWORD ',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          obscureText: true,
                          maxLines: 1,
                          maxLength: 10,
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'Password Cannot Be Empty';
                            }
                            return null;
                          },
                          onSaved: (text) {
                            _password = text;
                          }),
                      SizedBox(height: 5.0),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'NIC',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          maxLines: 1,
                          maxLength: 10,
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'NIC Cannot Be Empty';
                            }
                            return null;
                          },
                          onSaved: (text) {
                            _nic = text;
                          }),
                      SizedBox(height: 5.0),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'FULL NAME',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          maxLines: 1,
                          maxLength: 30,
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'Name Cannot Be Empty';
                            }
                            return null;
                          },
                          onSaved: (text) {
                            _name = text;
                          }),
                      SizedBox(height: 5.0),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'D.O.B',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          maxLines: 1,
                          maxLength: 10,
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'Birthday Cannot Be Empty! Use "YYYY/MM/DD" Format!';
                            }
                            return null;
                          },
                          onSaved: (text) {
                            _dob = text;
                          }),
                      SizedBox(height: 5.0),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'CONTACT NUMBER',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          maxLines: 1,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'NIC Cannot Be Empty';
                            }
                            return null;
                          },
                          onSaved: (text) {
                            _cnum = text;
                          }),
                      SizedBox(height: 25.0),
                      Container(
                          height: 50.0,
                          width: 160.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(25.0),
                            shadowColor: Colors.greenAccent[900],
                            color: Colors.green,
                            elevation: 9.0,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();
                                  print(_name);
                                }
                              },
                              child: Center(
                                child: Text(
                                  'SIGNUP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(height: 20.0),
                      Container(
                        height: 50.0,
                        width: 160.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Center(
                              child: Text('Go Back',
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              // SizedBox(height: 15.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text(
              //       'New to medcare app?',
              //       style: TextStyle(
              //         fontFamily: 'Montserrat',
              //       ),
              //     ),
              //     SizedBox(width: 5.0),
              //     InkWell(
              //       child: Text('Register',
              //           style: TextStyle(
              //               color: Colors.green,
              //               fontFamily: 'Montserrat',
              //               fontWeight: FontWeight.bold,
              //               decoration: TextDecoration.underline)),
              //     )
              //   ],
              // )
            ]),
          ),
        ),
      ),
    );
  }
}
