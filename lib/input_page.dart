import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'container_data.dart';
import 'results.dart';
import 'calculator_brain.dart';

const Color activecardcolor = Color(0xFF1D1E33);
const Color inactivecardcolor = Color(0xFF111328);
int height = 180;
int weight = 1;
int age = 1;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardcolor = inactivecardcolor;
  Color femaleCardcolor = inactivecardcolor;
  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardcolor == inactivecardcolor) {
        maleCardcolor = activecardcolor;
        femaleCardcolor = inactivecardcolor;
      } else {
        maleCardcolor = inactivecardcolor;
      }
    } else {
      if (femaleCardcolor == inactivecardcolor) {
        femaleCardcolor = activecardcolor;
        maleCardcolor = inactivecardcolor;
      } else {
        femaleCardcolor = inactivecardcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: ContainerData(
                        maleCardcolor,
                        IconContent(FontAwesomeIcons.mars, "MALE"),
                      ))),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ContainerData(
                    femaleCardcolor,
                    IconContent(FontAwesomeIcons.venus, "FEMALE"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ContainerData(
                activecardcolor,
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("HEIGHT",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(),
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w900)),
                            Text("cm",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )),
                          ]),
                      Expanded(
                          child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0xff9f9595),
                                thumbColor: Colors.pink,
                                overlayColor: Color(0xffeaaec2),
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 20.0),
                              ),
                              child: Slider(
                                  value: height.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height = newValue.round();
                                    });
                                  })))
                    ]))),
        Expanded(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ContainerData(
                    activecardcolor,
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEIGHT",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              )),
                          Text(weight.toString(),
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w900)),
                          Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RawMaterialButton(
                                    child: Icon(FontAwesomeIcons.minus),
                                    shape: CircleBorder(),
                                    elevation: 6.00,
                                    fillColor: Colors.pink,
                                    constraints: BoxConstraints.tightFor(
                                      width: 56.00,
                                      height: 56.00,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                  RawMaterialButton(
                                    child: Icon(FontAwesomeIcons.plus),
                                    shape: CircleBorder(),
                                    elevation: 6.00,
                                    fillColor: Colors.pink,
                                    constraints: BoxConstraints.tightFor(
                                      width: 56.00,
                                      height: 56.00,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ]),
                          )
                        ])),
                Expanded(
                  child: ContainerData(
                      activecardcolor,
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Text("AGE",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ))),
                            Expanded(
                                child: Text(age.toString(),
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w900))),
                            Expanded(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  Expanded(
                                    child: RawMaterialButton(
                                      child: Icon(FontAwesomeIcons.minus),
                                      shape: CircleBorder(),
                                      elevation: 6.00,
                                      fillColor: Colors.pink,
                                      constraints: BoxConstraints.tightFor(
                                        width: 56.00,
                                        height: 56.00,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: RawMaterialButton(
                                      child: Icon(FontAwesomeIcons.plus),
                                      shape: CircleBorder(),
                                      elevation: 6.00,
                                      fillColor: Colors.pink,
                                      constraints: BoxConstraints.tightFor(
                                        width: 56.00,
                                        height: 56.00,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                    ),
                                  ),
                                ])),
                          ])),
                ),
              ]),
        ),
        GestureDetector(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(height, weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultsPage(calc.calculateBMI(), calc.getResult(),
                    calc.getInterpretation());
              }));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Center(
                // padding: EdgeInsets.fromLTRB(90, 20, 40, 20),
                child: Text('CALCULATE', style: TextStyle(fontSize: 30.00)),
              ),
              color: Colors.pink,
              width: double.infinity,
              height: 80.0,
              margin: EdgeInsets.only(top: 10.0),
            ))
      ]),
    );
  }
}
