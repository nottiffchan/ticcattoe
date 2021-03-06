import 'package:flutter/material.dart';
import 'package:tictactoe/Player1Page.dart';
import 'package:tictactoe/CustomDialogue.dart';
import 'package:tictactoe/gameButton.dart';
import 'dart:math';

class AutoPlay extends StatefulWidget {
  @override
  _AutoPlayState createState() => _AutoPlayState();
}

class _AutoPlayState extends State<AutoPlay> {
  List<GameButton> buttonsList;
  var player1;
  var player2;
  var activePlayer;
  var numPic = -1;
  // var numPic2 = -1;
  int p1score = 0;
  int p2score = 0;


  @override
  void initState() {
    super.initState();
    buttonsList = doInit();
  }

  List<GameButton> doInit() {
    player1 = new List();
    player2 = new List();
    activePlayer = 1;
    Color gray = Colors.grey[900];
    // const Colors.grey = const Color(0xFF3E5E6B);

    var gameButtons = <GameButton>[
      new GameButton(id: 1, bg: gray),
      new GameButton(id: 2, bg: gray),
      new GameButton(id: 3, bg: gray),
      new GameButton(id: 4, bg: gray),
      new GameButton(id: 5, bg: gray),
      new GameButton(id: 6, bg: gray),
      new GameButton(id: 7, bg: gray),
      new GameButton(id: 8, bg: gray),
      new GameButton(id: 9, bg: gray),
    ];
    return gameButtons;
  }

  void playGame(GameButton gb) {
    setState(() {
      if (activePlayer == 1) {
        if (numPic == -1) {
          showDialog(
            context: context,
            builder: (_) => new CustomDialogue("Error", "Please choose avatar.", resetGame)
          );
        }
        if (numPic == 1) {
          gb.enabled = true;
          gb.img = Image.asset('assets/cat1.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        if (numPic == 2) {
          gb.enabled = true;
          gb.img = Image.asset('assets/mariecat.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        if (numPic == 3) {
          gb.enabled = true;
          gb.img = Image.asset('assets/cat3.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        if (numPic == 4) {
          gb.enabled = true;
          gb.img = Image.asset('assets/cat4.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        if (numPic == 5) {
          gb.enabled = true;
          gb.img = Image.asset('assets/cat5.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        if (numPic == 6) {
          gb.enabled = true;
          gb.img = Image.asset('assets/cat6.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        if (numPic == 7) {
          gb.enabled = true;
          gb.img = Image.asset('assets/cat7.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        if (numPic == 8) {
          gb.enabled = true;
          gb.img = Image.asset('assets/cat8.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        if (numPic == 9) {
          gb.enabled = true;
          gb.img = Image.asset('assets/unicorn.gif');
          activePlayer = 2;
          player1.add(gb.id);
        }
        
      } else {
          gb.img = Image.asset('assets/robo5.gif');
          activePlayer = 1;
          player2.add(gb.id);
      }
      gb.enabled = false;
      int winner = checkWinner();
      if (winner == -1 && activePlayer == 2) {
        autoPlay();
      }
    });
  }

  void autoPlay() {
    var emptyCells = new List();
    var list = new List.generate(9, (i) => i + 1);
    for (var cellID in list) {
      if (!(player1.contains(cellID) || player2.contains(cellID))) {
        emptyCells.add(cellID);
      }
    }

    var r = new Random();
    var randIndex = r.nextInt(emptyCells.length-1);
    var cellID = emptyCells[randIndex];
    int i = buttonsList.indexWhere((p)=> p.id == cellID);
    playGame(buttonsList[i]);

  }


  int checkWinner() {
    var winner = -1;
    if (player1.contains(1) && player1.contains(2) && player1.contains(3)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(2) && player2.contains(3)) {
      winner = 2;
    }
    if (player1.contains(4) && player1.contains(5) && player1.contains(6)) {
      winner = 1;
    }
    if (player2.contains(4) && player2.contains(5) && player2.contains(6)) {
      winner = 2;
    }
    if (player1.contains(7) && player1.contains(8) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(7) && player2.contains(8) && player2.contains(9)) {
      winner = 2;
    }
    if (player1.contains(7) && player1.contains(1) && player1.contains(4)) {
      winner = 1;
    }
    if (player1.contains(2) && player1.contains(5) && player1.contains(8)) {
      winner = 1;
    }
    if (player1.contains(3) && player1.contains(6) && player1.contains(9)) {
      winner = 1;
    }
    if (player1.contains(1) && player1.contains(5) && player1.contains(9)) {
      winner = 1;
    }    
    if (player1.contains(3) && player1.contains(5) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(7) && player2.contains(1) && player2.contains(4)) {
      winner = 2;
    }
    if (player2.contains(2) && player2.contains(5) && player2.contains(8)) {
      winner = 2;
    }
    if (player2.contains(3) && player2.contains(6) && player2.contains(9)) {
      winner = 2;
    }
    if (player2.contains(1) && player2.contains(5) && player2.contains(9)) {
      winner = 2;
    }    
    if (player2.contains(3) && player2.contains(5) && player2.contains(7)) {
      winner = 2;
    }
    if (winner == 1) {
      p1score += 1;
      showDialog(
        context: context,
        builder: (_) => new CustomDialogue("Player 1 wins!", "Press reset button to restart.", resetGame)
        );
      
    } else if (winner == 2) {
      p2score += 1;
      showDialog(
        context: context,
        builder: (_) => new CustomDialogue("Player 2 wins!", "Press reset button to restart.", resetGame)
        );
    } else {
      if (player1.length + player2.length == 9) {
        showDialog(
          context: context,
          builder: (_) => new CustomDialogue("boo u all lost", "Press reset button to restart.", resetGame)
        );
      }
    }
    return winner;
  }

  void resetGame() {
    if (Navigator.canPop(context)) Navigator.pop(context);
    setState(() {
      buttonsList = doInit();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 60.0),
          new Text("TicCatToe", 
            style: TextStyle(
              fontSize: 37.0,
              fontFamily: 'PressStart', 
              fontWeight: FontWeight.bold, 
              color: Colors.white, 
              letterSpacing: 2.0
            )
          ),
          SizedBox(height: 30.0),
          Text('Player 1           Player 2', style: TextStyle(color: Colors.white, fontSize: 11.0, fontFamily: 'PressStart')),
          SizedBox(height: 8.0),
          Text(p1score.toString() + '                      ' + p2score.toString(), style: TextStyle(color: Colors.white, fontSize: 10.0, fontFamily: 'PressStart')),
          new Expanded(
             child: new GridView.builder(
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
             gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3,
               childAspectRatio: 1.0,
               crossAxisSpacing: 4.0,
               mainAxisSpacing: 4.0,
             ),
             itemCount: buttonsList.length,
             itemBuilder: (context, i)=> new SizedBox(
               width: 100.0,
               height: 100.0,
               child: new FlatButton(
                 onPressed: buttonsList[i].enabled 
                 ? ()=>playGame(buttonsList[i]) 
                 : null,
                 child: buttonsList[i].img,
                 color: buttonsList[i].bg,
                 disabledColor: buttonsList[i].bg,
               ),
             ),
             ),
          ),
          // SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              SizedBox(width: 20.0),
              Column(
                children: <Widget>[
                  new RaisedButton(
                    color: Colors.transparent,
                    // elevation: 0.0,
                    child: new Text("Player 1 avatar", style: TextStyle(fontSize: 10.0, color: Colors.grey[50], fontFamily: 'PressStart')),
                    onPressed: () {
                      goPlayer1Page(context);
                    },
                  ),
                  // SizedBox(height: 20.0)
                ],
              ),
              SizedBox(width: 100.0),
              new RaisedButton(
                elevation: 0.0,
                child: new Text("Reset",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontFamily: 'PressStart'
                )
                ),
                color: Colors.transparent,
                padding: const EdgeInsets.all(10.0),
                onPressed: resetGame,
              )
            ],
          ),
          new SizedBox(height: 40.0),
          ],
      )
    );
  }

  Future goPlayer1Page(context) async {
    numPic = await Navigator.push(context, MaterialPageRoute(builder: (context) => Player1Page()));
    print(numPic);
  }
}