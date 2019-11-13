import 'package:card_counter/main_page.dart';
import 'package:card_counter/widgets/custom_dialog.dart';
import 'package:card_counter/widgets/custom_popup.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroPage extends StatelessWidget {
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
                  colors: [Color(0xffea5e7b), Color(0xffec7065)],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TypewriterAnimatedTextKit(
                      onTap: () {},
                      text: ['Hello'],
                      textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white70,
                          fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '👋',
                  style:
                      TextStyle(decoration: TextDecoration.none, fontSize: 30),
                ),
                SizedBox(height: 25),
                Text(
                  'This site will help you in practising card counting\n'
                  'and developing quick calculation skills for maintaining\n'
                  'the current count.\n\n'
                  'The method used for calculating count is based on the\n'
                  'Hi-Lo counting system.',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white70,
                      fontSize: 26),
                ),
                SizedBox(height: 50),
                Text(
                  'For more info on Hi-Lo system, click on the i button 🙂',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black54,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, FadeRoute(page: MainPage()));
                    },
                    color: Color(0xffff78ae),
                    elevation: 3,
                    child: Text('Play'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Text(
                  '<> over 3 cups of ☕️ by Astitva',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      color: Colors.white54),
                ),
              ],
            ),
          ),
        ),
        // this is custom built widget button for pop up.
        CustomPopUp()
      ],
    );
  }
}

// transition class for overriding defalut material transition

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
