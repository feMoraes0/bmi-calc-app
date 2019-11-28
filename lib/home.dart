import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String infoText = "Add your data.";
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  void _resetFields() {
    weightController.text = "";
    heightController.text = "";
    setState(() {
      infoText = "Add your data.";
    });
  }

  void _calculate() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text) / 100.0;
    double bmi = weight / (height * height);

    String message;

    if(bmi < 18.6) {
      message = "Underweight ${bmi.toStringAsPrecision(3)}";
    } else if(bmi >= 18.6 && bmi < 24.9) {
      message = "Ideal weight ${bmi.toStringAsPrecision(3)}";
    } else if(bmi >= 24.9 && bmi < 29.9) {
      message = "Slighly overweight ${bmi.toStringAsPrecision(3)}";
    } else if(bmi >= 29.9 && bmi < 34.9) {
      message = "Grade 1 obesity ${bmi.toStringAsPrecision(3)}";
    } else if(bmi >= 34.9 && bmi < 39.9) {
      message = "Grade 2 obesity ${bmi.toStringAsPrecision(3)}";
    } else {
      message = "Grade 3 obesity ${bmi.toStringAsPrecision(3)}";
    }

    setState(() {
      infoText = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          IconButton(
            onPressed: _resetFields,
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // to use all width
          children: <Widget>[
            Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.greenAccent,
            ),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent),
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                labelStyle: TextStyle(
                  color: Colors.greenAccent,
                ),
              ),
            ),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent),
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                labelStyle: TextStyle(
                  color: Colors.greenAccent,
                ),
              ),
            ),
            Container(
              height: 50.0,
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: RaisedButton(
                onPressed: _calculate,
                child: Text(
                  "Calculate!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                color: Colors.greenAccent,
              ),
            ),
            Text(
              infoText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
