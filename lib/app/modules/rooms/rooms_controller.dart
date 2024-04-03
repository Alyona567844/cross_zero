import 'package:cross_zero/app/data/models/session.dart/newSession.dart';
import 'package:cross_zero/app/data/services/storage_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../data/services/network_service.dart';

class RoomsController extends GetxController {
  final _networkService = Get.find<NetworkService>();
  var storage = Get.find<StorageService>();
  var textFieldCtrl = TextEditingController();

  // @override
  // void OnInit() {
  //   storage.open;
  //   super.onInit();
  // }

  // @override
  // void OnClose() {
  //   storage.close;
  //   super.onClose();
  // }

  Future<void> createRoom() async {
    String roomName = textFieldCtrl.text;
    var createResult = await _networkService.createSession(roomName);
    if (!createResult) {
      Get.snackbar(
        'Ошибка',
        'Не удалось создать комнату',
      );
    } else {
      Get.offAndToNamed('game');
    }
    print(roomName);
  }

  RxList<NewSession> newSession = <NewSession>[].obs;

  void getRooms() async {
    newSession.value = await _networkService.getRooms();
  }

  // Future<void> joinSession(String sessionId) async {
  //   if (await _networkService.joinSession(sessionId)) {
  //     Get.offNamed('play');
  //   }
  // }

  // Future<void> logout() async {
  //   if (await _networkService.deleteUser()) {
  //     await storage.delete();
  //     Get.offAllNamed(Routes.HOME);
  //   } else {
  //     Get.snackbar('Ошибка', 'Не удалось покинуть аккаунт');
  //   }
  // }

  // void changeNick(String nick) async {
  //   var change = await _networkService.updateNick(nick);
  //   if (!change) {
  //     Get.snackbar("Ошибка", "Не удалось сменить никнейм");
  //   } else {
  //     return Get.back();
  //   }
  // }

  // void startSession() async {
  //   var start = await _networkService.startSession();
  //   if (!start) {
  //     Get.snackbar("Ошибка", "Не удалось запустить игру");
  //   } else {
  //     Get.toNamed(Routes.GAME);
  //   }
  // }
}
