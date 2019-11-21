import 'package:flutter/material.dart';
import 'package:test_app/output.dart';

//import './output.dart';
class Input extends StatelessWidget {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   myController1.dispose();
  //   super.dispose();
  //   myController2.dispose();
  //   super.dispose();
  //   myController3.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            controller: myController1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Enter height(feet)'),
          ),
          TextField(
            controller: myController2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter height(inches)'),
          ),
          TextField(
            controller: myController3,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter weight(pounds)'),
          ),
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Output(feet: int.parse(myController1.text), inches: int.parse(myController2.text), weight: int.parse(myController3.text)))),
            child: Container(
              color: Color.fromARGB(1, 77, 184, 255),
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text('CALCULATE BMI'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}