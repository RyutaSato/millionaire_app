import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millionaire/model/player_model.dart';

part 'play_model.freezed.dart';
part 'play_model.g.dart';

enum PlayMode{
  ranked,
  unrated,
  custom,
}

@freezed
class PlayModel with _$PlayModel {
  const factory PlayModel({
    required String version,
    @JsonKey(name: 'play_mode') required PlayMode playMode,
    required List<PlayerModel> players,
    // configuration
    @Default(true) bool flow_8,
    @JsonKey(name: "joker_num") @Default(2) int jokerNum,
    // TODO: ゲーム設定をAPI実装後に記述


  }) = _PlayModel;
 factory PlayModel.fromJson(Map<String, dynamic> json) => _$PlayModelFromJson(json);
}