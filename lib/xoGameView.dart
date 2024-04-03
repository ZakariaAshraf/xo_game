import 'package:flutter/material.dart';
import 'package:xo_game/game_btn.dart';

class XoGame extends StatefulWidget {
  static const String routeName = "game";

  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {
  int score1 = 0;

  int score2 = 0;

  List<String> board = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6D4EE8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6D4EE8),
        centerTitle: true,
        title: const Text(
          "XO Game",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
        ),
        leading: IconButton(
          icon: const Icon(Icons.replay),
          onPressed: () {
            setState(() {
              score1=0;
            score2=0;
            });
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "player one",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$score1",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "player two",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$score2",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GameBtn(board[0], 0, onBtnClick),
                GameBtn(board[1], 1, onBtnClick),
                GameBtn(board[2], 2, onBtnClick),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GameBtn(board[3], 3, onBtnClick),
                  GameBtn(board[4], 4, onBtnClick),
                  GameBtn(board[5], 5, onBtnClick),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GameBtn(board[6], 6, onBtnClick),
                  GameBtn(board[7], 7, onBtnClick),
                  GameBtn(board[8], 8, onBtnClick),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  int counter = 1;

  onBtnClick(index) {
    if (board[index].isNotEmpty) {
      return;
    }
    if (counter.isOdd) {
      board[index] = "X";
      score1 += 0;
      bool win = chechWinner("X");
      if (win) {
        score1 += 1;
        resetBoard();
      }
    } else {
      board[index] = "O";
      score2 += 0;
      bool win = chechWinner("O");
      if (win) {
        score2 += 1;
        resetBoard();
      }
    }
    if (counter == 9) {
      resetBoard();
    }

    counter++;

    setState(() {});
  }

  resetBoard() {
    board = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    counter = 0;
  }

  bool chechWinner(String sympol) {
    if (board[0] == sympol && board[1] == sympol && board[2] == sympol) {
      return true;
    }
    if (board[3] == sympol && board[4] == sympol && board[5] == sympol) {
      return true;
    }
    if (board[6] == sympol && board[7] == sympol && board[8] == sympol) {
      return true;
    }
    if (board[0] == sympol && board[3] == sympol && board[6] == sympol) {
      return true;
    }
    if (board[1] == sympol && board[4] == sympol && board[7] == sympol) {
      return true;
    }
    if (board[2] == sympol && board[5] == sympol && board[8] == sympol) {
      return true;
    }
    if (board[0] == sympol && board[4] == sympol && board[8] == sympol) {
      return true;
    }
    if (board[2] == sympol && board[4] == sympol && board[6] == sympol) {
      return true;
    }
    return false;
  }
}
