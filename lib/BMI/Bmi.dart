import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightGreenAccent.shade400,
              Colors.greenAccent.shade700,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Height in cm',
                  icon: Icon(Icons.trending_up),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Weight in kg',
                  icon: Icon(Icons.line_weight),
                ),
              ),
              SizedBox(height: 90),
              Container(
                height: 60.0,
                width: 140.0,
                child: MaterialButton(
                  color: Colors.pinkAccent,
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                  onPressed: calculateBMI,
                ),
              ),
              SizedBox(height: 60),
              Text(
                _result == null
                    ? "Your BMI Index Is"
                    : "${_result.toStringAsFixed(2)}",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    setState(() {});
  }
}
