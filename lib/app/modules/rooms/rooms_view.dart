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
        // leading: IconButton(
        //     onPressed: () => controller.changeNick,
        //     icon: const Icon(Icons.safety_check)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                          // fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.create,
                          color: Color.fromARGB(255, 29, 94, 14)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 16, 16, 16))),
              onPressed: () => controller.getRooms(),
              child: const Text(
                'Просмотреть комнаты',
                style: TextStyle(color: Color.fromARGB(255, 193, 150, 21)),
              ),
            ),
            Obx(
              () => ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  height: 5.0,
                  color: Color.fromARGB(255, 193, 150, 21),
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.newSession.length,
                itemBuilder: (context, index) {
                  final session = controller.newSession[index];
                  return ListTile(
                    title: Text(
                      session.name,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 193, 150, 21)),
                    ),
                    trailing: Text(
                      session.game_state,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 193, 150, 21)),
                    ),
                  );
                },
              ),
            ),
          ],
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
                    cursorColor: const Color.fromARGB(255, 193, 150, 21),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 193, 150, 21))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 193, 150, 21))),
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
                  onPressed: () {
                    controller.createRoom();
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Создать',
                    style: TextStyle(
                      color: Color.fromARGB(255, 29, 94, 14),
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
