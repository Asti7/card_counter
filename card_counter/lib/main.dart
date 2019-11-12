import 'package:flutter/material.dart';

import 'intro_page.dart';

void main() => runApp(CardCounter());

class CardCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {},
    );
  }
}
