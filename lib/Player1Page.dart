import 'package:flutter/material.dart';

class Player1Page extends StatefulWidget {
  @override
  _Player1PageState createState() => _Player1PageState();
}

class _Player1PageState extends State<Player1Page> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: new Text("Player 1 Character Select", style: TextStyle(fontFamily: 'PressStart', fontSize: 12.0, color: Colors.white)),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          FlatButton(onPressed: () {
            Navigator.pop(context, 1);
          }, 
          child: Image.asset('assets/cat1.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 2);
          }, 
          child: Image.asset('assets/mariecat.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 3);
          }, 
          child: Image.asset('assets/cat3.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 4);
          }, 
          child: Image.asset('assets/cat4.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 5);
          }, 
          child: Image.asset('assets/cat5.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 6);
          }, 
          child: Image.asset('assets/cat6.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 7);
          }, 
          child: Image.asset('assets/cat7.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 8);
          }, 
          child: Image.asset('assets/cat8.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 9);
          }, 
          child: Image.asset('assets/unicorn.gif')),
        ],
      ),
    );
  }
}