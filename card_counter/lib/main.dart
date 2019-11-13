import 'package:card_counter/intro_page.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

void main() => runApp(CardCounter());

class CardCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
