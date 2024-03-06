// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Board _$BoardFromJson(Map<String, dynamic> json) {
  return _Board.fromJson(json);
}

/// @nodoc
mixin _$Board {
  String get row0 => throw _privateConstructorUsedError;
  String get row1 => throw _privateConstructorUsedError;
  String get row2 => throw _privateConstructorUsedError;
  String get turn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res, Board>;
  @useResult
  $Res call({String row0, String row1, String row2, String turn});
}

/// @nodoc
class _$BoardCopyWithImpl<$Res, $Val extends Board>
    implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row0 = null,
    Object? row1 = null,
    Object? row2 = null,
    Object? turn = null,
  }) {
    return _then(_value.copyWith(
      row0: null == row0
          ? _value.row0
          : row0 // ignore: cast_nullable_to_non_nullable
              as String,
      row1: null == row1
          ? _value.row1
          : row1 // ignore: cast_nullable_to_non_nullable
              as String,
      row2: null == row2
          ? _value.row2
          : row2 // ignore: cast_nullable_to_non_nullable
              as String,
      turn: null == turn
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardImplCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$$BoardImplCopyWith(
          _$BoardImpl value, $Res Function(_$BoardImpl) then) =
      __$$BoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String row0, String row1, String row2, String turn});
}

/// @nodoc
class __$$BoardImplCopyWithImpl<$Res>
    extends _$BoardCopyWithImpl<$Res, _$BoardImpl>
    implements _$$BoardImplCopyWith<$Res> {
  __$$BoardImplCopyWithImpl(
      _$BoardImpl _value, $Res Function(_$BoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row0 = null,
    Object? row1 = null,
    Object? row2 = null,
    Object? turn = null,
  }) {
    return _then(_$BoardImpl(
      row0: null == row0
          ? _value.row0
          : row0 // ignore: cast_nullable_to_non_nullable
              as String,
      row1: null == row1
          ? _value.row1
          : row1 // ignore: cast_nullable_to_non_nullable
              as String,
      row2: null == row2
          ? _value.row2
          : row2 // ignore: cast_nullable_to_non_nullable
              as String,
      turn: null == turn
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardImpl implements _Board {
  _$BoardImpl(
      {required this.row0,
      required this.row1,
      required this.row2,
      required this.turn});

  factory _$BoardImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardImplFromJson(json);

  @override
  final String row0;
  @override
  final String row1;
  @override
  final String row2;
  @override
  final String turn;

  @override
  String toString() {
    return 'Board(row0: $row0, row1: $row1, row2: $row2, turn: $turn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardImpl &&
            (identical(other.row0, row0) || other.row0 == row0) &&
            (identical(other.row1, row1) || other.row1 == row1) &&
            (identical(other.row2, row2) || other.row2 == row2) &&
            (identical(other.turn, turn) || other.turn == turn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, row0, row1, row2, turn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      __$$BoardImplCopyWithImpl<_$BoardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardImplToJson(
      this,
    );
  }
}

abstract class _Board implements Board {
  factory _Board(
      {required final String row0,
      required final String row1,
      required final String row2,
      required final String turn}) = _$BoardImpl;

  factory _Board.fromJson(Map<String, dynamic> json) = _$BoardImpl.fromJson;

  @override
  String get row0;
  @override
  String get row1;
  @override
  String get row2;
  @override
  String get turn;
  @override
  @JsonKey(ignore: true)
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
