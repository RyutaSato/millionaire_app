// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayModel _$$_PlayModelFromJson(Map<String, dynamic> json) => _$_PlayModel(
      version: json['version'] as String,
      playMode: $enumDecode(_$PlayModeEnumMap, json['play_mode']),
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      flow_8: json['flow_8'] as bool? ?? true,
      jokerNum: json['joker_num'] as int? ?? 2,
    );

Map<String, dynamic> _$$_PlayModelToJson(_$_PlayModel instance) =>
    <String, dynamic>{
      'version': instance.version,
      'play_mode': _$PlayModeEnumMap[instance.playMode]!,
      'players': instance.players,
      'flow_8': instance.flow_8,
      'joker_num': instance.jokerNum,
    };

const _$PlayModeEnumMap = {
  PlayMode.ranked: 'ranked',
  PlayMode.unrated: 'unrated',
  PlayMode.custom: 'custom',
};
