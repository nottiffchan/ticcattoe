import 'package:flutter/material.dart';

class CustomDialogue extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final actionText;

  CustomDialogue(this.title, this.content, this.callback, [this.actionText="Reset"]);
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      backgroundColor: Colors.white,
      title: Center(child: new Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'PressStart'))),
      content: new Text(content, style: TextStyle(fontSize: 12.0, fontFamily: 'PressStart')),
      actions: <Widget>[
        SizedBox(height: 24.0),
        new FlatButton(
          onPressed: callback,
          color: Colors.white,
          child: Center(child: new Text(actionText, style: TextStyle(fontSize: 12.0, color: Colors.black, fontFamily: 'PressStart'))))
      ],
    );
  }
}