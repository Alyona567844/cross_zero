import 'package:cross_zero/app/data/models/session.dart/board.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'newSession.freezed.dart';
part 'newSession.g.dart';

@freezed
class NewSession with _$NewSession {

  factory NewSession({
    required Board board,
    required String game_state,
    required String? guest_name,
    required String history,
    required int host_name,
    required int id,
    required String name,
  }) = _NewSession;

  factory NewSession.fromJson(Map<String, dynamic> json) => _$NewSessionFromJson(json);
}