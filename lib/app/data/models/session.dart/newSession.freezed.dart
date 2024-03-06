// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newSession.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewSession _$NewSessionFromJson(Map<String, dynamic> json) {
  return _NewSession.fromJson(json);
}

/// @nodoc
mixin _$NewSession {
  Board get board => throw _privateConstructorUsedError;
  String get game_state => throw _privateConstructorUsedError;
  String? get guest_name => throw _privateConstructorUsedError;
  String get history => throw _privateConstructorUsedError;
  int get host_name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewSessionCopyWith<NewSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewSessionCopyWith<$Res> {
  factory $NewSessionCopyWith(
          NewSession value, $Res Function(NewSession) then) =
      _$NewSessionCopyWithImpl<$Res, NewSession>;
  @useResult
  $Res call(
      {Board board,
      String game_state,
      String? guest_name,
      String history,
      int host_name,
      int id,
      String name});

  $BoardCopyWith<$Res> get board;
}

/// @nodoc
class _$NewSessionCopyWithImpl<$Res, $Val extends NewSession>
    implements $NewSessionCopyWith<$Res> {
  _$NewSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? game_state = null,
    Object? guest_name = freezed,
    Object? history = null,
    Object? host_name = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      game_state: null == game_state
          ? _value.game_state
          : game_state // ignore: cast_nullable_to_non_nullable
              as String,
      guest_name: freezed == guest_name
          ? _value.guest_name
          : guest_name // ignore: cast_nullable_to_non_nullable
              as String?,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String,
      host_name: null == host_name
          ? _value.host_name
          : host_name // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardCopyWith<$Res> get board {
    return $BoardCopyWith<$Res>(_value.board, (value) {
      return _then(_value.copyWith(board: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewSessionImplCopyWith<$Res>
    implements $NewSessionCopyWith<$Res> {
  factory _$$NewSessionImplCopyWith(
          _$NewSessionImpl value, $Res Function(_$NewSessionImpl) then) =
      __$$NewSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Board board,
      String game_state,
      String? guest_name,
      String history,
      int host_name,
      int id,
      String name});

  @override
  $BoardCopyWith<$Res> get board;
}

/// @nodoc
class __$$NewSessionImplCopyWithImpl<$Res>
    extends _$NewSessionCopyWithImpl<$Res, _$NewSessionImpl>
    implements _$$NewSessionImplCopyWith<$Res> {
  __$$NewSessionImplCopyWithImpl(
      _$NewSessionImpl _value, $Res Function(_$NewSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? game_state = null,
    Object? guest_name = freezed,
    Object? history = null,
    Object? host_name = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$NewSessionImpl(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      game_state: null == game_state
          ? _value.game_state
          : game_state // ignore: cast_nullable_to_non_nullable
              as String,
      guest_name: freezed == guest_name
          ? _value.guest_name
          : guest_name // ignore: cast_nullable_to_non_nullable
              as String?,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String,
      host_name: null == host_name
          ? _value.host_name
          : host_name // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewSessionImpl implements _NewSession {
  _$NewSessionImpl(
      {required this.board,
      required this.game_state,
      required this.guest_name,
      required this.history,
      required this.host_name,
      required this.id,
      required this.name});

  factory _$NewSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewSessionImplFromJson(json);

  @override
  final Board board;
  @override
  final String game_state;
  @override
  final String? guest_name;
  @override
  final String history;
  @override
  final int host_name;
  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'NewSession(board: $board, game_state: $game_state, guest_name: $guest_name, history: $history, host_name: $host_name, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSessionImpl &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.game_state, game_state) ||
                other.game_state == game_state) &&
            (identical(other.guest_name, guest_name) ||
                other.guest_name == guest_name) &&
            (identical(other.history, history) || other.history == history) &&
            (identical(other.host_name, host_name) ||
                other.host_name == host_name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, board, game_state, guest_name, history, host_name, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewSessionImplCopyWith<_$NewSessionImpl> get copyWith =>
      __$$NewSessionImplCopyWithImpl<_$NewSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewSessionImplToJson(
      this,
    );
  }
}

abstract class _NewSession implements NewSession {
  factory _NewSession(
      {required final Board board,
      required final String game_state,
      required final String? guest_name,
      required final String history,
      required final int host_name,
      required final int id,
      required final String name}) = _$NewSessionImpl;

  factory _NewSession.fromJson(Map<String, dynamic> json) =
      _$NewSessionImpl.fromJson;

  @override
  Board get board;
  @override
  String get game_state;
  @override
  String? get guest_name;
  @override
  String get history;
  @override
  int get host_name;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$NewSessionImplCopyWith<_$NewSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
