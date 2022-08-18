// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerModel _$PlayerModelFromJson(Map<String, dynamic> json) {
  return _PlayerModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerModel {
  UserModel get user =>
      throw _privateConstructorUsedError; // TODO: マネートレード情報を追加予定
  List<CardModel> get cards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerModelCopyWith<PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerModelCopyWith<$Res> {
  factory $PlayerModelCopyWith(
          PlayerModel value, $Res Function(PlayerModel) then) =
      _$PlayerModelCopyWithImpl<$Res>;
  $Res call({UserModel user, List<CardModel> cards});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$PlayerModelCopyWithImpl<$Res> implements $PlayerModelCopyWith<$Res> {
  _$PlayerModelCopyWithImpl(this._value, this._then);

  final PlayerModel _value;
  // ignore: unused_field
  final $Res Function(PlayerModel) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? cards = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlayerModelCopyWith<$Res>
    implements $PlayerModelCopyWith<$Res> {
  factory _$$_PlayerModelCopyWith(
          _$_PlayerModel value, $Res Function(_$_PlayerModel) then) =
      __$$_PlayerModelCopyWithImpl<$Res>;
  @override
  $Res call({UserModel user, List<CardModel> cards});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_PlayerModelCopyWithImpl<$Res> extends _$PlayerModelCopyWithImpl<$Res>
    implements _$$_PlayerModelCopyWith<$Res> {
  __$$_PlayerModelCopyWithImpl(
      _$_PlayerModel _value, $Res Function(_$_PlayerModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerModel));

  @override
  _$_PlayerModel get _value => super._value as _$_PlayerModel;

  @override
  $Res call({
    Object? user = freezed,
    Object? cards = freezed,
  }) {
    return _then(_$_PlayerModel(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      cards: cards == freezed
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerModel with DiagnosticableTreeMixin implements _PlayerModel {
  const _$_PlayerModel(
      {required this.user, required final List<CardModel> cards})
      : _cards = cards;

  factory _$_PlayerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerModelFromJson(json);

  @override
  final UserModel user;
// TODO: マネートレード情報を追加予定
  final List<CardModel> _cards;
// TODO: マネートレード情報を追加予定
  @override
  List<CardModel> get cards {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerModel(user: $user, cards: $cards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerModel'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('cards', cards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerModel &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerModelCopyWith<_$_PlayerModel> get copyWith =>
      __$$_PlayerModelCopyWithImpl<_$_PlayerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerModelToJson(
      this,
    );
  }
}

abstract class _PlayerModel implements PlayerModel {
  const factory _PlayerModel(
      {required final UserModel user,
      required final List<CardModel> cards}) = _$_PlayerModel;

  factory _PlayerModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerModel.fromJson;

  @override
  UserModel get user;
  @override // TODO: マネートレード情報を追加予定
  List<CardModel> get cards;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerModelCopyWith<_$_PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
