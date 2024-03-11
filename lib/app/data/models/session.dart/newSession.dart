import 'package:freezed_annotation/freezed_annotation.dart';

part 'newSession.freezed.dart';
part 'newSession.g.dart';

@freezed
class NewSession with _$NewSession {

  factory NewSession({
    required Map<String, dynamic> board,
    required String game_state,
    required String? guest_name,
    required List<dynamic> history,
    required String host_name,
    required String id,
    required String name,
  }) = _NewSession;

  factory NewSession.fromJson(Map<String, dynamic> json) => _$NewSessionFromJson(json);
}