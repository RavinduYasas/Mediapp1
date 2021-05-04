import 'package:flutter/material.dart';

class MedcardViewPage extends StatefulWidget {
  @override
  _MedcardViewPagestate createState() => _MedcardViewPagestate();
}

class _MedcardViewPagestate extends State<MedcardViewPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
                      child: Text(
                        
                        'Doctor Prescription',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                    ),
                    
                     

                  ],
                ),
              ),
              SizedBox(height: 10.0),

              Container(
                  padding: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                  child: Column(children: <Widget>[
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
                  ]
                  )
                  ),
                     SizedBox(height: 24.0,),
               
                        Container(
                                
                          // alignment: Alignment.center,
                          
                           padding: EdgeInsets.fromLTRB(30.0, 10.0, 40.0, 0.0),
                            height: 80.0,
                            width: 240.0,
                            
                            child: Material(
                              
                              borderRadius: BorderRadius.circular(29.0),
                              shadowColor: Colors.greenAccent[900],
                              color: Colors.tealAccent[700],
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {

                                },
                                
                                child: Center(
                                  child: Text(
                                    'Find',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 29,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'
                                      ),
                                  ),
                               ),
                              ),
                            )
                          ),
                        ]
                      )
                   )
     );
  }
}
