import 'package:cross_zero/app/data/models/new_user.dart';
import 'package:cross_zero/app/data/models/session.dart/newSession.dart';
// import 'package:cross_zero/app/data/models/user.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'storage_service.dart';

class NetworkService extends GetxService {

  var storage = Get.find<StorageService>();

  var client = Dio(BaseOptions(baseUrl: 'https://ttt.bulbaman.me/'));
  NewUser? user;
  final getHeader = ''.obs;

  Future<NetworkService> init() async {
    return this;
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

  Future<bool> createSession(String roomName) async {
    try {
      var response = await client.post("session/create/$roomName",
          options: Options(headers: {'authorization': getHeader.value}));
      var newSession = NewSession.fromJson(response.data);
      print(newSession);
      // await storage.writeSessionData(newSession);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<NewSession>> getRooms() async {
    try {
      var response = await client.get("session/get");
      List<dynamic> allRoomsId = response.data;
      List<NewSession> roomsData = [];
      for (var el in allRoomsId) {
        var getId = await getRoom(el);
        roomsData.add(getId);
      }
      return roomsData;
    } catch (e) {
      print(e);
      print('Ошибка с получением комнат');
      return [];
    }
  }

  Future<NewSession> getRoom(String id) async {
    try {
      var response = await client.get("session/get/$id");
      var newSession = NewSession.fromJson(response.data);
      return newSession;
    } catch (e) {
      print(e);
      print('Ошибка с получением комнаты');
      throw 2;
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

  // Future<bool> updateNick(String newNick) async {
  //   try {
  //     var response = await client.patch("user/update",
  //         data: {"username": newNick},
  //         options: Options(headers: {'authorization': getHeader.value}));
  //     if (response.statusCode == 200) {
  //       var user = storage.readUserData();
  //       // if (user != null) {
  //         var updateNick = NewUser(
  //             private_key: user.private_key,
  //             user: User.fromJson(response.data));
  //         await storage.writeUserData(updateNick);
  //         return true;
  //       // }
  //     }
  //     return false;
  //   } catch (e) {
  //     print('Ошибка при смене ника $e');
  //     return false;
  //   }
  // }

  // Future<bool> deleteUser() async {
  //   try {
  //     var del = await client.delete("user/delete",
  //         data: storage.readUserData(),
  //         options: Options(headers: {'authorization': getHeader.value}));
  //     if (del.statusCode == 200) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   } catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }

  // Future<bool> startSession() async {
  //   try {
  //     var resp = await client.patch('session/start',
  //         options: Options(headers: {'authorization': storage.readAuthHeader}));
  //     if (resp.statusCode == 200) {
  //       await storage.writeSessionData(NewSession.fromJson(resp.data));
  //       return true;
  //     } else {
  //       print("Не удалось запустить игру");
  //       return false;
  //     }
  //   } catch (e) {
  //     print('Ошибка при запуске $e');
  //     return false;
  //   }
  // }

  // Future<bool> joinSession(String sessionId) async {
  //   try {
  //     var resp = await client.patch('session/join/$sessionId',
  //         options: Options(headers: {'authorization': getHeader.value}));
  //     var sessionData = resp.data;
  //     if (sessionData != null) {
  //       await storage.writeSessionData(NewSession.fromJson(sessionData));
  //       print(sessionData);
  //       var user = storage.readUserData();
  //       if (user != null) {
  //         var updateUser = NewUser(
  //           private_key: user.private_key,
  //           user: User(username: user.user.username, in_session: sessionId),
  //         );
  //         await storage.writeUserData(updateUser);
  //       }
  //     }
  //     return true;
  //   } catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }

  // Future<bool> leaveSession() async {
  //   var resp = await client.delete('session/leave',
  //       options: Options(headers: {'authorization': getHeader.value}));
  //   if (resp.statusCode == 200) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // Future<void> move(int row, int col) async {
  //   try {
  //     var resp = await client.patch('session/move',
  //         data: {
  //           "row": row,
  //           "col": col,
  //         },
  //         options: Options(headers: {'authorization': getHeader.value}));
  //     await storage.writeSessionData(NewSession.fromJson(resp.data));
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
