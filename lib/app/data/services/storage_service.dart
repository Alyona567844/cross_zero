// import 'dart:convert';

// import 'package:cross_zero/app/data/models/session.dart/newSession.dart';
import 'package:cross_zero/app/data/models/new_user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:hive_flutter/adapters.dart';

class StorageService extends GetxService{
  late GetStorage box;
  // late Box box;

  Future<StorageService> init() async {
    // await Hive.initFlutter();
    // box = await Hive.openBox('box');
    await GetStorage.init('main');
    box = GetStorage('box');
    return this;
  }

  // void open() async {
  //   box = await Hive.openBox('box');
  // }

  // void close() async {
  //   await box.close();
  // } 

  // void delete() async {
  //   await box.clear();
  // }

  // Future<void> writeUserData(NewUser data) async {
  //   var jsonData = data.toJson();
  //   var stringData = jsonEncode(jsonData);
  //   await box.put('userData', stringData);
  //   print(stringData);
  // }
  
  // NewUser? readUserData() {
  //   String? stringData = box.get('userData');
  //   if (stringData == null || stringData.isEmpty) {
  //     return null; 
  //   } else {
  //     Map<String, dynamic> jsonData = jsonDecode(stringData);
  //     NewUser data = NewUser.fromJson(jsonData);
  //     return data;
  //   }
  // }
  
  // Future<void> writeUserData(NewUser data) =>
  //     box.put('userData', data.toJson());

  // NewUser? readUserData() => box.get('userData');

  // Future<void> writeSessionData(NewSession data) =>
  //   box.put('sessionData', data.toJson());
  

  // NewSession? readSessionData()  =>
  //   box.get('sessionData');
  

  // Future<void> wtiteAuthHeader(String data) async {
  //   box.put('authHeader', data);
  // }

  // Future<void> readAuthHeader() async {
  //   box.get('authHeader');
  //   print(box.get('authHeader'));
  // }

  // Future<void> wtiteAuthHeader(String data) =>
  // box.write('authHeader', data);

  // Future<void> readAuthHeader() => box.read('authHeader');


  
  Future<void> writeUserData(NewUser data) =>
      box.write('userData', data.toJson());

  NewUser? readUserData() => box.read('userData');

  // Future<void> writeSessionData(NewSession data) =>
  //     box.write('sessionData', data.toJson());

  // NewSession? readSessionData() => box.read('sessionData');
}
