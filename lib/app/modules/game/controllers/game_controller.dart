import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  RxBool isTurn = true.obs;
  RxInt o = 0.obs;
  RxInt x = 0.obs;
  RxInt count = 0.obs;

  RxList<String> changeXO = ['', '', '', '', '', '', '', '', ''].obs;

  void cheixod(int i) {
    if (isTurn.value && changeXO[i] == '') {
      changeXO[i] = 'o';
      isTurn.toggle();
    } else if (!isTurn.value && changeXO[i] == '') {
      changeXO[i] = 'x';
      isTurn.toggle();
    }
    count++;
    whowin();
  }

  void whowin() {
    if (changeXO[0] == changeXO[1] &&
        changeXO[0] == changeXO[2] &&
        changeXO[0] != '') {
      showDialog(winner: changeXO[0]);
    }
    if (changeXO[3] == changeXO[4] &&
        changeXO[3] == changeXO[5] &&
        changeXO[3] != '') {
      showDialog(winner: changeXO[3]);
    }
    if (changeXO[6] == changeXO[7] &&
        changeXO[6] == changeXO[8] &&
        changeXO[6] != '') {
      showDialog(winner: changeXO[6]);
    }
    if (changeXO[0] == changeXO[3] &&
        changeXO[0] == changeXO[6] &&
        changeXO[0] != '') {
      showDialog(winner: changeXO[0]);
    }
    if (changeXO[1] == changeXO[4] &&
        changeXO[1] == changeXO[7] &&
        changeXO[1] != '') {
      showDialog(winner: changeXO[1]);
    }
    if (changeXO[2] == changeXO[5] &&
        changeXO[2] == changeXO[8] &&
        changeXO[2] != '') {
      showDialog(winner: changeXO[2]);
    }
    if (changeXO[0] == changeXO[4] &&
        changeXO[0] == changeXO[8] &&
        changeXO[0] != '') {
      showDialog(winner: changeXO[0]);
    }
    if (changeXO[2] == changeXO[4] &&
        changeXO[2] == changeXO[6] &&
        changeXO[2] != '') {
      showDialog(winner: changeXO[2]);
    }
    if (count.value == 9) {
      showDialog(winnerExist: false);
      clearBoard();
    }
  }

  void showDialog({String winner = '', bool winnerExist = true}) {
    Get.dialog(
      AlertDialog(
        backgroundColor: const Color.fromARGB(255, 193, 150, 21),
        title: Center(child: Text(winnerExist ? 'Winner: $winner' : 'Ничья', style: const TextStyle(color: Colors.black),)),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Center(child: Text('Играть ещё раз', style: TextStyle(color: Colors.black, fontSize: 20),),),
          )
        ],
      ),
    );
    count.value = 0;
    clearBoard();
    if (winner == 'o') {
      o++;
    } else if (winner == 'x') {
      x++;
    }
  }

  void clearBoard() {
    for (int i = 0; i < 9; i++) {
      changeXO[i] = '';
    }
  }
}
