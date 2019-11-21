import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  final int feet;
  final int inches;
  final int weight;

  Output({this.feet, this.inches, this.weight});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Result'),
        ),
           body: Result(this.feet, this.inches, this.weight),
      ),
    );
  }
}

class Result extends StatefulWidget {
  final int feet;
  final int inches;
  final int weight;

  Result(this.feet, this.inches, this.weight);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
        Text('${bmiResult(this.widget.feet, this.widget.inches, this.widget.weight)}',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        // InkWell(
        //   onTap: () => Navigator.pop(context),
        //   child: Container(
        //     child: Center(
        //       child: Text('RE-CALCULATE'),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

bmiResult(f, i, w) {
  var h = (f * 12) + i;
  var bmi = (703 * w) / (h * h);
  return bmi.round();
}
