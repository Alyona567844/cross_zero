import 'package:cross_zero/app/modules/forPlay/xo_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_controller.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    final GameController controller = Get.put(GameController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        title: const Text('XO GAME', style: xoStyle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Игрок X',
                        style: xoStyle,
                      ),
                      Obx(() => Text(
                            controller.x.toString(),
                            style: xoStyle,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'Игрок O',
                        style: xoStyle,
                      ),
                      Obx(() => Text(
                            controller.o.toString(),
                            style: xoStyle,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Obx(
            () => Expanded(
              flex: 3,
              child: GridView.builder(
                itemCount: controller.changeXO.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext ctx, int index) {
                  return GestureDetector(
                    onTap: () => controller.cheixod(index),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color.fromARGB(255, 193, 150, 21))),
                      child: Center(
                        child: Text(
                          controller.changeXO[index],
                          style: const TextStyle(
                            color: Color.fromARGB(255, 193, 150, 21),
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 25, 25, 25),
    );
  }
}
