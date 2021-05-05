import 'package:flutter/material.dart';
import 'package:mediapp1/dashboard/base.dart';

class MedcardAddPage extends StatefulWidget {
  @override
  _MedcardAddPagestate createState() => _MedcardAddPagestate();
}

class _MedcardAddPagestate extends State<MedcardAddPage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name;
  String _age;
  String _nic;
  String _diagnosis;
  String _notes;
  String _med;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('MedCare'),
          backgroundColor: Colors.transparent,
          elevation: 20,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.lightGreenAccent.shade400,
                Colors.greenAccent.shade700,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          ),
        ),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            //  crossAxisAlignment: CrossAxisAlignment.start,
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Add New MedCard',
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              controller: _heightController,
                              decoration: InputDecoration(
                                  labelText: 'Name',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              maxLines: 2,
                              maxLength: 20,
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
                                  labelText: 'Age ',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              obscureText: false,
                              maxLines: 1,
                              maxLength: 2,
                              keyboardType: TextInputType.number,
                              validator: (text) {
                                if (text.isEmpty) {
                                  return 'Age Cannot Be Empty';
                                }
                                return null;
                              },
                              onSaved: (text) {
                                _age = text;
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
                                      borderSide:
                                          BorderSide(color: Colors.green))),
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
                                  labelText: 'Diagnosis',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              maxLines: 1,
                              maxLength: 100,
                              validator: (text) {
                                if (text.isEmpty) {
                                  return 'Diagnosis Cannot Be Empty';
                                }
                                return null;
                              },
                              onSaved: (text) {
                                _diagnosis = text;
                              }),
                          SizedBox(height: 5.0),
                          TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Special Notes',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              maxLines: 1,
                              maxLength: 100,
                              validator: (text) {
                                if (text.isEmpty) {
                                  return 'Notes Cannot Be Empty';
                                }
                                return null;
                              },
                              onSaved: (text) {
                                _notes = text;
                              }),
                          SizedBox(height: 5.0),
                          TextFormField(
                              controller: _weightController,
                              decoration: InputDecoration(
                                  labelText:
                                      'Recomended Medicines or Treatment',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              maxLines: 5,
                              maxLength: 200,
                              validator: (text) {
                                if (text.isEmpty) {
                                  return 'Recomended Medicines Cannot Be Empty';
                                }
                                return null;
                              },
                              onSaved: (text) {
                                _med = text;
                              }),
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
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                      print(_name);
                                    }
                                  },
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
                            padding:
                                EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
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
                ],
              ),
            ),
          ),
        ));
  }
  //  double height = double.parse(_heightController.text) / 100;
  // double weight = double.parse(_weightController.text);
}
