import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            onPressed: () {},
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
                onPressed: () {},
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
              "Info",
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
