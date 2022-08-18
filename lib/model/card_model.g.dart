// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardModel _$$_CardModelFromJson(Map<String, dynamic> json) => _$_CardModel(
      id: json['id'] as String,
      suite: $enumDecodeNullable(_$SuiteEnumMap, json['suite']),
      number: json['number'] as int?,
      strength: json['strength'] as int?,
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AbilityEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_CardModelToJson(_$_CardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'suite': _$SuiteEnumMap[instance.suite],
      'number': instance.number,
      'strength': instance.strength,
      'abilities':
          instance.abilities?.map((e) => _$AbilityEnumMap[e]!).toList(),
    };

const _$SuiteEnumMap = {
  Suite.spade: 'spade',
  Suite.club: 'club',
  Suite.diamond: 'diamond',
  Suite.heart: 'heart',
  Suite.joker: 'joker',
  Suite.tears: 'tears',
  Suite.rose: 'rose',
  Suite.axe: 'axe',
};

const _$AbilityEnumMap = {
  Ability.sandStorm: 'sandStorm',
};
