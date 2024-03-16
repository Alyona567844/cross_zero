import 'package:cross_zero/app/data/models/new_user.dart';
import 'package:cross_zero/app/data/models/session.dart/newSession.dart';
// import 'package:cross_zero/app/data/models/user.dart';
import 'package:cross_zero/app/routes/app_pages.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'storage_service.dart';

class NetworkService extends GetxService {
  var storage = Get.find<StorageService>();
  var client = Dio(BaseOptions(baseUrl: 'https://ttt.bulbaman.me/'));
  NewUser? user;
  final getHeader = ''.obs;

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
      getHeader.value = newUser.authHeader;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  // Future<List<User>> getUsers() async {
  //   var response = await client.post("user/get");
  //   List<dynamic> allUsers = response.data;
  //   List<User> usersData = [];
  //   for (var el in allUsers) {
  //     var getUs = await getUser(el);
  //     usersData.add(getUs);
  //   }
  //   return usersData;
  // }

  // Future<User> getUser(String username) async {
  //   var response = await client.post("user/get/$username");
  //   var userNick = NewUser.fromJson(response.data).user;
  //   return userNick;
  // }
  
  Future<bool> updateNick() async {
    try {
      var response = await client.patch("user/update",
          options: Options(headers: {'authorization': getHeader.value}));
      var newSession = NewSession.fromJson(response.data);
      print(newSession);
      await storage.writeSessionData(newSession);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
  
  Future<bool> createSession(String roomName) async {
    try {
      var response = await client.post("session/create/$roomName",
          options: Options(headers: {'authorization': getHeader.value}));
      var newSession = NewSession.fromJson(response.data);
      print(newSession);
      await storage.writeSessionData(newSession);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<NewSession>> getRooms() async {
    try{
      var response = await client.get("session/get");
      List<dynamic> allRoomsId = response.data;
      List<NewSession> roomsData = [];
      for (var el in allRoomsId) {
        var getId = await getRoom(el);
        roomsData.add(getId);
      }
      return roomsData;
    } catch(e) {
      print(e);
      print('Ошибка с получением комнат');
      return [];
    }
  }

  Future<NewSession> getRoom(String id) async {
    try{
      var response = await client.get("session/get/$id");
      var newSession = NewSession.fromJson(response.data);
      return newSession;
    } catch(e){
      print(e);
      print('Ошибка с получением комнаты');
      throw 2;
    }
  }

}
