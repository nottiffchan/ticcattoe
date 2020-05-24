import 'package:flutter/material.dart';

class Player1Page extends StatefulWidget {
  @override
  _Player1PageState createState() => _Player1PageState();
}

class _Player1PageState extends State<Player1Page> {

  @override
  Widget build(BuildContext context) {
    const blue = const Color(0xFF264653);
    return new Scaffold(
      backgroundColor: blue,
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: blue,
        title: new Text("Player 1 Character Select", style: TextStyle(fontFamily: 'Hind', fontSize: 24.0, color: Colors.white)),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          FlatButton(onPressed: () {
            Navigator.pop(context, 1);
          }, 
          child: Image.asset('assets/cat (1).gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 2);
          }, 
          child: Image.asset('assets/mariecat.gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 3);
          }, 
          child: Image.asset('assets/cat (3).gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 4);
          }, 
          child: Image.asset('assets/cat (4).gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 5);
          }, 
          child: Image.asset('assets/cat (5).gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 6);
          }, 
          child: Image.asset('assets/cat (6).gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 7);
          }, 
          child: Image.asset('assets/cat (7).gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 8);
          }, 
          child: Image.asset('assets/cat (8).gif')),
          FlatButton(onPressed: () {
            Navigator.pop(context, 9);
          }, 
          child: Image.asset('assets/unicorn.gif')),
        ],
      ),
    );
  }
}