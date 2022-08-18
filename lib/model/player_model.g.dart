// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerModel _$$_PlayerModelFromJson(Map<String, dynamic> json) =>
    _$_PlayerModel(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlayerModelToJson(_$_PlayerModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'cards': instance.cards,
    };
