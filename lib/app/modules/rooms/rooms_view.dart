import 'package:cross_zero/app/modules/rooms/rooms_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoomsView extends GetView<RoomsController> {
  const RoomsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Text('rfcr')
    );
  }
}