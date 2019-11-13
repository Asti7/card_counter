import 'package:card_counter/main_page.dart';
import 'package:flutter/material.dart';

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
          floatingActionButton: Container(
            height: 50.0,
            width: 50.0,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () {},
                elevation: 3,
                child: Icon(Icons.info_outline),
                backgroundColor: Color(0xffff78ae),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Hello 👋',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white70,
                          fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  'This site will help you in practising card counting\n'
                  'and developing quick calculation skills for maintaining\n'
                  'the current count.\n\n'
                  'The method used for calculating\n'
                  'count is based on the Hi-Lo counting system.',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white70,
                      fontSize: 26),
                ),
                SizedBox(height: 50),
                Text(
                  'For more info on Hi-Lo system, click on the i logo 🙂',
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
                )
              ],
            ),
          ),
        ),
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
