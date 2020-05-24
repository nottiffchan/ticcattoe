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
    const blue = const Color(0xFF264653);
    const lightorange = const Color(0xFFf4a261);
    const darkorange = const Color(0xFFe76f51);
    const yellow = const Color(0xFFf9c74f);
    const green = const Color(0xFF2a9d8f);
    return Scaffold(
      // backgroundColor: Colors.indigo[800],
      backgroundColor: blue,
      body: Column(
        children: <Widget>[
          SizedBox(height: 80.0),
          Center(
            child: new Text("TicCatToe!", 
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Skranji', 
                fontWeight: FontWeight.bold, 
                color: yellow, 
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
            color: green,
            padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('Single Player', style: TextStyle(color: Colors.white, fontFamily: 'Hind', fontSize: 25.0),),
          ),
          SizedBox(height: 28.0),
          RaisedButton(
            onPressed: (){
              goGamePage(context);
            },
            color: green,
            padding: const EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('Multiplayer', style: TextStyle(color: Colors.white, fontFamily: 'Hind', fontSize: 25.0),),
            // child: Icon(
            //   Icons.play_arrow,
            //   color: Colors.white,
            //   size: 80.0,
            // ),
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