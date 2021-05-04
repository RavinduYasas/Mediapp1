import 'package:flutter/material.dart';
import 'package:mediapp1/dashboard/base.dart';

class MedcardAddPage extends StatefulWidget {
  @override
  _MedcardAddPagestate createState() => _MedcardAddPagestate();
}

class _MedcardAddPagestate extends State<MedcardAddPage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

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
                          'Add New MedCard',
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(340.0, 150.0, 0.0, 0.0),
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
                        TextField(
                          controller: _heightController,
                          decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              // hintText: 'EMAIL',
                              // hintStyle: ,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Age ',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          obscureText: false,
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'NIC',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Diagnosis',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Special Notes',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          controller: _weightController,
                          decoration: InputDecoration(
                              labelText: 'Recomended Medicines or Treatment',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                            height: 80.0,
                            width: 190.0,
                            padding:
                                EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.greenAccent,
                              color: Colors.green,
                              elevation: 9.0,
                              child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Add & Save',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          height: 80.0,
                          width: 190.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context, Basepage());
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
              ]),
        ));
  }
  //  double height = double.parse(_heightController.text) / 100;
  // double weight = double.parse(_weightController.text);
}
