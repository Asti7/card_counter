import 'package:flutter/material.dart';

import 'custom_dialog.dart';

class CustomPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 40,
          width: 40,
          child: MaterialButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => CustomDialog(
                  
                ),
              );
            },
            elevation: 3.0,
            color: Color(0xffdcffcc),
            shape: CircleBorder(),
            child: Center(
              child: Text(
                'i',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
