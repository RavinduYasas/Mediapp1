import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
                        
                        padding: EdgeInsets.fromLTRB(90.0, 370.0, 90.0, 100.0),
                        child: InkWell(
                              onTap: () {
                               Navigator.of(context).pushNamed('/home');
                              },
                              
                        child: Text(
                          'Med Care',
                          style: TextStyle(
                              fontSize: 50.0,color:Colors.lightBlueAccent , fontWeight: FontWeight.bold),
                        ),
                      ),
                       ) 
                       ]
                 ) 
          )
          ]
          )
    )
  );
}
}