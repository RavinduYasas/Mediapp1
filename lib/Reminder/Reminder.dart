import 'package:flutter/material.dart';

class ReminderPage extends StatefulWidget {
  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
                    child: Text(
                      'Add New Reminder',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
                child: Column(children: <Widget>[
                  SizedBox(height: 5.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Name ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: false,
                  ),
                  SizedBox(height: 5.0),
                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        labelText: 'Type ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: false,
                  ),
                  SizedBox(height: 5.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Dose ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: false,
                  ),
                ]))
          ],
        )));
  }
}
