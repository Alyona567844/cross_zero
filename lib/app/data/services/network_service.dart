import 'package:cross_zero/app/data/models/new_user.dart';
import 'package:cross_zero/app/data/models/session.dart/newSession.dart';
import 'package:cross_zero/app/routes/app_pages.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'storage_service.dart';

class NetworkService extends GetxService {
  var storage = Get.find<StorageService>();
  var client = Dio(BaseOptions(baseUrl: 'https://ttt.bulbaman.me/'));
  NewUser? user;

  Future<NetworkService> init() async {
    await readPrefs();
    return this;
  }

  Future<void> readPrefs() async {
    var userReaded = await storage.readUserData();
    if (userReaded != null) {
      Get.offAndToNamed(Routes.ROOMS);
    }
    print(userReaded);
  }

  Future<bool> registration(String nick) async {
    try {
      var response = await client.post("user/add/$nick");
      var newUser = NewUser.fromJson(response.data);
      print(newUser);
      await storage.writeUserData(newUser);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  // Future<bool> createSession(String roomName) async {
  //   try{
  //     var response = await client.post("session/create/$roomName");
  //     var newSession = NewSession.fromJson(response.data);
  //     print(newSession);
  //     await storage.writeSessionData(newSession);
  //     return true;
  //   } catch(e) {
  //     print(e);
  //     return false;
  //   }
  // }
}
