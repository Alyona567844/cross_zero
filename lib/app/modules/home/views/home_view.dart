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
          style: TextStyle(
            color: Color.fromARGB(255, 193, 150, 21),
            fontSize: 22,
          ),
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
                color: Color.fromARGB(255, 193, 150, 21), fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              controller: controller.textFieldCtlr,
              style: const TextStyle(color: Color.fromARGB(255, 193, 150, 21)),
            ),
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
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 25, 25, 25),
    );
  }
}
