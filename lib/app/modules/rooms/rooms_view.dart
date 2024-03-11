import 'package:cross_zero/app/modules/rooms/rooms_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoomsView extends GetView<RoomsController> {
  const RoomsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Комнаты',
          style: TextStyle(
            color: Color.fromARGB(255, 193, 150, 21),
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 16, 16, 16),
              ),
            ),
            onPressed: () {
              dialog(context);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Text(
                    'Создать комнату',
                    style: TextStyle(
                      color: Color.fromARGB(255, 193, 150, 21),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.create, color: Color.fromARGB(255, 29, 94, 14)),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 25, 25, 25),
    );
  }

  Future<dynamic> dialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: const Color.fromARGB(255, 29, 94, 14),
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 80, vertical: 100),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Название комнаты',
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 150, 21), fontSize: 23),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    controller: controller.textFieldCtrl,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 193, 150, 21)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Color.fromARGB(255, 193, 150, 21),
                    ),
                  ),
                  onPressed: () {controller.createRoom();},
                  child: const Text(
                    'Создать',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
