import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millionaire/model/user_model.dart';

import 'card_model.dart';

part 'player_model.freezed.dart';
part 'player_model.g.dart';

@freezed
class PlayerModel with _$PlayerModel {
  const factory PlayerModel({
    required UserModel user,
    // TODO: マネートレード情報を追加予定
    required List<CardModel> cards,
}) = _PlayerModel;

 factory PlayerModel.fromJson(Map<String, dynamic> json) => _$PlayerModelFromJson(json);
}