import 'dart:convert';

import 'package:cross_zero/app/data/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_user.freezed.dart';
part 'new_user.g.dart';

@freezed
class NewUser with _$NewUser {
  NewUser._();
  factory NewUser({
    required String private_key,
    required User user,
  }) = _NewUser;

  String get nick => user.username;
  String get authHeader =>
      'Basic ${base64.encode(utf8.encode('$nick:$private_key'))}';
  factory NewUser.fromJson(Map<String, dynamic> json) =>
      _$NewUserFromJson(json);
}
