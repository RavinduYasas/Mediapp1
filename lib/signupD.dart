import 'package:flutter/material.dart';
import 'package:mediapp1/main.dart';

class SignupDPage extends StatefulWidget {
  @override
  _SignupDPageState createState() => _SignupDPageState();
}

class _SignupDPageState extends State<SignupDPage> {
  final GlobalKey<FormState> _dformKey = GlobalKey<FormState>();

  String _demail; //Email Address
  String _dpassword; //Password
  String _dregno; //NIC
  String _dname; //full name
  String _darea; //date of birth
  String _dcnum; //contact number

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: Form(
                key: _dformKey,
                child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                                  child: Text(
                                    'Hello Doctor!',
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 50.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 100.0, 0.0, 0.0),
                                  child: Text(
                                    'SignUp Now!',
                                    style: TextStyle(
                                        color: Colors.lightGreenAccent[700],
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: 15.0, left: 20.0, right: 20.0),
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
                                          // hintText: 'EMAIL',
                                          // hintStyle: ,
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green))),
                                      maxLines: 1,
                                      maxLength: 10,
                                      validator: (text) {
                                        if (text.isEmpty) {
                                          return 'Email Cannot Be Empty';
                                        }
                                        return null;
                                      },
                                      onSaved: (text) {
                                        _demail = text;
                                      }),
                                  SizedBox(height: 8.0),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'PASSWORD ',
                                          labelStyle: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.grey),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green))),
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
                                        _dpassword = text;
                                      }),
                                  SizedBox(height: 8.0),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'GOV.REG.NUMBER',
                                          labelStyle: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.grey),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green))),
                                      maxLines: 1,
                                      maxLength: 10,
                                      validator: (text) {
                                        if (text.isEmpty) {
                                          return 'Gov.Reg.No Cannot Be Empty';
                                        }
                                        return null;
                                      },
                                      onSaved: (text) {
                                        _dregno = text;
                                      }),
                                  SizedBox(height: 8.0),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'FULL NAME',
                                          labelStyle: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.grey),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green))),
                                      maxLines: 1,
                                      maxLength: 10,
                                      validator: (text) {
                                        if (text.isEmpty) {
                                          return 'Gov.Reg.No Cannot Be Empty';
                                        }
                                        return null;
                                      },
                                      onSaved: (text) {
                                        _dname = text;
                                      }),
                                  SizedBox(height: 8.0),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'SPECIALIZED AREA',
                                          labelStyle: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.grey),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green))),
                                      maxLines: 1,
                                      maxLength: 10,
                                      validator: (text) {
                                        if (text.isEmpty) {
                                          return 'Specialized Area Cannot Be Empty';
                                        }
                                        return null;
                                      },
                                      onSaved: (text) {
                                        _darea = text;
                                      }),
                                  SizedBox(height: 8.0),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'CONTACT NUMBER',
                                          labelStyle: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.grey),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green))),
                                      maxLines: 1,
                                      maxLength: 10,
                                      keyboardType: TextInputType.number,
                                      validator: (text) {
                                        if (text.isEmpty) {
                                          return 'Contact Number Cannot Be Empty';
                                        }
                                        return null;
                                      },
                                      onSaved: (text) {
                                        _dcnum = text;
                                      }),
                                  SizedBox(height: 24.0),
                                  Container(
                                      height: 50.0,
                                      width: 140.0,
                                      child: Material(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        shadowColor: Colors.greenAccent,
                                        color: Colors.green,
                                        elevation: 7.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            if (_dformKey.currentState
                                                .validate()) {
                                              _dformKey.currentState.save();
                                              print(_dname);
                                            }
                                          },
                                          child: Center(
                                            child: Text(
                                              'SIGNUP',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Montserrat'),
                                            ),
                                          ),
                                        ),
                                      )),
                                  SizedBox(height: 20.0),
                                  Container(
                                    height: 50.0,
                                    width: 140.0,
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black,
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context, MyHomePage());
                                        },
                                        child: Center(
                                          child: Text('Go Back',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Montserrat')),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ])))));
  }
}
