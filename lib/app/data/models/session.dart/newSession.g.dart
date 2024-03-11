// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newSession.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewSessionImpl _$$NewSessionImplFromJson(Map<String, dynamic> json) =>
    _$NewSessionImpl(
      board: json['board'] as Map<String, dynamic>,
      game_state: json['game_state'] as String,
      guest_name: json['guest_name'] as String?,
      history: json['history'] as List<dynamic>,
      host_name: json['host_name'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$NewSessionImplToJson(_$NewSessionImpl instance) =>
    <String, dynamic>{
      'board': instance.board,
      'game_state': instance.game_state,
      'guest_name': instance.guest_name,
      'history': instance.history,
      'host_name': instance.host_name,
      'id': instance.id,
      'name': instance.name,
    };
