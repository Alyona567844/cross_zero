// import 'dart:convert';

import 'package:cross_zero/app/data/models/new_user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  late GetStorage box;
  Future<StorageService> init() async {
    await GetStorage.init('main');
    box = GetStorage('box');
    return this;
  }

  // Future<void> writeUserData(NewUser data) async {
  //   var jsonData = data.toJson();
  //   var stringData = jsonEncode(jsonData);
  //   await box.write('userData', stringData);
  // }
  // NewUser? readUserData() {
  //   String stringData = box.read<String>('userData')??'';
  //   Map<String, dynamic> jsonData = jsonDecode(stringData);
  //   NewUser data = NewUser.fromJson(jsonData);
  //   return data;
  // }
  Future<void> writeUserData(NewUser data) =>
      box.write('userData', data.toJson());

  NewUser? readUserData() => box.read('userData');
}
