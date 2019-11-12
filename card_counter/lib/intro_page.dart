import 'package:flutter/material.dart';
import 'dart:math';
import 'value.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  var cardValue1 =
      Values().cardValues[Random().nextInt(Values().cardValues.length)];
  var cardType1 =
      Values().cardTypes[Random().nextInt(Values().cardTypes.length)];

  var cardValue2 =
      Values().cardValues[Random().nextInt(Values().cardValues.length)];
  var cardType2 =
      Values().cardTypes[Random().nextInt(Values().cardTypes.length)];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xffea5e7b), Color(0xffec7065)]),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child:
                            Image.asset('assets/${cardValue1}${cardType1}.png'),
                      ),
                      Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child:
                            Image.asset('assets/${cardValue2}${cardType2}.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 150),
                  Container(
                    width: 100,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        setState(
                          () {
                            cardValue1 = Values().cardValues[
                                Random().nextInt(Values().cardValues.length)];
                            cardType1 = Values().cardTypes[
                                Random().nextInt(Values().cardTypes.length)];

                            cardValue2 = Values().cardValues[
                                Random().nextInt(Values().cardValues.length)];
                            cardType2 = Values().cardTypes[
                                Random().nextInt(Values().cardTypes.length)];
                          },
                        );
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text('Roll Card'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
