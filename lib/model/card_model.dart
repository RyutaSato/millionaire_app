import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  // Added constructor. Must not have any parameter
  //const Person._();

  const factory CardModel({
    required String id,
    Suite? suite,
    int? number,
    int? strength,
    List<Ability>? abilities

}) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);

}
enum Suite{
  spade,
  club,
  diamond,
  heart,
  joker,
  tears,
  rose,
  axe
}
enum Ability{
  sandStorm,
}