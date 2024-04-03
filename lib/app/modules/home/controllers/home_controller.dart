import 'package:cross_zero/app/data/services/network_service.dart';
import 'package:cross_zero/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  var textFieldCtlr = TextEditingController();
  final _networkService = Get.find<NetworkService>();

  Future<void> auth() async {
    String nickname = textFieldCtlr.text;
    var regResult = await _networkService.registration(nickname);
    if (!regResult) {
      Get.snackbar(
        'Ошибка',
        'Не удалось зарегистрироваться',
      );
    } else {
      Get.offAndToNamed(Routes.ROOMS);
    }
    print(nickname);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  //   Get.toNamed(Routes.ROOMS);
  // }
}
