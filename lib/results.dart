import 'package:flutter/material.dart';
import 'input_page.dart';
import 'container_data.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.bmiResult, this.resultText, this.interpretation);
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI CALCULATOR')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text("Your Result",
                        style: TextStyle(
                          fontSize: 48.0,
                        )))),
            Expanded(
                flex: 5,
                child: ContainerData(
                    activecardcolor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(resultText,
                            style:
                                TextStyle(color: Colors.green, fontSize: 24.00),
                            textAlign: TextAlign.center),
                        Text(bmiResult,
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        Text(
                          interpretation,
                          style: TextStyle(fontSize: 22.0),
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: Center(
                                // padding: EdgeInsets.fromLTRB(90, 20, 40, 20),
                                child: Text('RE-CALCULATE',
                                    style: TextStyle(fontSize: 30.00)),
                              ),
                              color: Colors.pink,
                              width: double.infinity,
                              height: 80.0,
                              margin: EdgeInsets.only(top: 10.0),
                            ))
                      ],
                    )))
          ],
        ));
  }
}
