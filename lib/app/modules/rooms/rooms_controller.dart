import 'package:cross_zero/app/data/models/session.dart/newSession.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../data/services/network_service.dart';
import '../../routes/app_pages.dart';

class RoomsController extends GetxController {
  final _networkService = Get.find<NetworkService>();
  var textFieldCtrl = TextEditingController();
  Future<void> createRoom() async {
    String roomName = textFieldCtrl.text;
    var createResult = await _networkService.createSession(roomName);
    if (!createResult) {
      Get.snackbar(
        'Error',
        'Не удалось создать комнату',
      );
    } else {
      Get.offAndToNamed(Routes.PLAY);
    }
    // print(roomName);
  }

  RxList<NewSession> newSession = <NewSession>[].obs;

  void getRooms() async {
    newSession.value = await _networkService.getRooms();
  }
  
}