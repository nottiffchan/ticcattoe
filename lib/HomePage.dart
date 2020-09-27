import 'package:flutter/material.dart';
import 'gamePage.dart';
import 'AutoPlay.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        children: <Widget>[
          SizedBox(height: 110.0),
          Center(
            child: new Text("TicCatToe", 
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: 'PressStart', 
                fontWeight: FontWeight.bold, 
                color: Colors.white,
                letterSpacing: 2.0
              )
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 270.0,
            height: 270.0,
            child: Image.asset('assets/nyancat.gif')
            ),
          SizedBox(height: 35.0),
          RaisedButton(
            onPressed: () {
              goAutoPlay(context);
            },
            color: Colors.transparent,
            padding: const EdgeInsets.fromLTRB(45.0, 12.0, 45.0, 12.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('Single Player', style: TextStyle(color: Colors.white, fontFamily: 'PressStart', fontSize: 15.0),),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            onPressed: (){
              goGamePage(context);
            },
            color: Colors.transparent,
            padding: const EdgeInsets.fromLTRB(60.0, 12.0, 60.0, 12.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('Multiplayer', style: TextStyle(color: Colors.white, fontFamily: 'PressStart', fontSize: 15.0),),
          ),
        ],
      ),
    );
  }

  Future goGamePage(context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage()));
  }
  Future goAutoPlay(context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => AutoPlay()));
  }
}