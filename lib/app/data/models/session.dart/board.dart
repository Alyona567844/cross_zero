import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';
part 'board.g.dart';

@freezed
class Board with _$Board {

  factory Board({
    required String row0,
    required String row1,
    required String row2,
    required String turn,
  }) = _Board;

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);
}