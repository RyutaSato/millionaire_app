import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String ulid,
    required String name,
    int? level
    // TODO: User情報をAPI実装後に記述
}) = _UserModel;

 factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}