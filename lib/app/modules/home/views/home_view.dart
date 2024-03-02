import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Добро пожаловать',
          style: TextStyle(color: Color.fromARGB(255, 193, 150, 21)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Введите никнейм',
            style: TextStyle(
                color: Color.fromARGB(255, 193, 150, 21), fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            controller: controller.textFieldCtlr,
            style: const TextStyle(color: Color.fromARGB(255, 193, 150, 21)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 193, 150, 21))),
            onPressed: controller.auth,
            child: const Text(
              'Войти',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 25, 25, 25),
    );
  }
}
