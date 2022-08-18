// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'play_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayModel _$PlayModelFromJson(Map<String, dynamic> json) {
  return _PlayModel.fromJson(json);
}

/// @nodoc
mixin _$PlayModel {
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'play_mode')
  PlayMode get playMode => throw _privateConstructorUsedError;
  List<PlayerModel> get players =>
      throw _privateConstructorUsedError; // configuration
  bool get flow_8 => throw _privateConstructorUsedError;
  @JsonKey(name: "joker_num")
  int get jokerNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayModelCopyWith<PlayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayModelCopyWith<$Res> {
  factory $PlayModelCopyWith(PlayModel value, $Res Function(PlayModel) then) =
      _$PlayModelCopyWithImpl<$Res>;
  $Res call(
      {String version,
      @JsonKey(name: 'play_mode') PlayMode playMode,
      List<PlayerModel> players,
      bool flow_8,
      @JsonKey(name: "joker_num") int jokerNum});
}

/// @nodoc
class _$PlayModelCopyWithImpl<$Res> implements $PlayModelCopyWith<$Res> {
  _$PlayModelCopyWithImpl(this._value, this._then);

  final PlayModel _value;
  // ignore: unused_field
  final $Res Function(PlayModel) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? playMode = freezed,
    Object? players = freezed,
    Object? flow_8 = freezed,
    Object? jokerNum = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      playMode: playMode == freezed
          ? _value.playMode
          : playMode // ignore: cast_nullable_to_non_nullable
              as PlayMode,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerModel>,
      flow_8: flow_8 == freezed
          ? _value.flow_8
          : flow_8 // ignore: cast_nullable_to_non_nullable
              as bool,
      jokerNum: jokerNum == freezed
          ? _value.jokerNum
          : jokerNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayModelCopyWith<$Res> implements $PlayModelCopyWith<$Res> {
  factory _$$_PlayModelCopyWith(
          _$_PlayModel value, $Res Function(_$_PlayModel) then) =
      __$$_PlayModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String version,
      @JsonKey(name: 'play_mode') PlayMode playMode,
      List<PlayerModel> players,
      bool flow_8,
      @JsonKey(name: "joker_num") int jokerNum});
}

/// @nodoc
class __$$_PlayModelCopyWithImpl<$Res> extends _$PlayModelCopyWithImpl<$Res>
    implements _$$_PlayModelCopyWith<$Res> {
  __$$_PlayModelCopyWithImpl(
      _$_PlayModel _value, $Res Function(_$_PlayModel) _then)
      : super(_value, (v) => _then(v as _$_PlayModel));

  @override
  _$_PlayModel get _value => super._value as _$_PlayModel;

  @override
  $Res call({
    Object? version = freezed,
    Object? playMode = freezed,
    Object? players = freezed,
    Object? flow_8 = freezed,
    Object? jokerNum = freezed,
  }) {
    return _then(_$_PlayModel(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      playMode: playMode == freezed
          ? _value.playMode
          : playMode // ignore: cast_nullable_to_non_nullable
              as PlayMode,
      players: players == freezed
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerModel>,
      flow_8: flow_8 == freezed
          ? _value.flow_8
          : flow_8 // ignore: cast_nullable_to_non_nullable
              as bool,
      jokerNum: jokerNum == freezed
          ? _value.jokerNum
          : jokerNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayModel with DiagnosticableTreeMixin implements _PlayModel {
  const _$_PlayModel(
      {required this.version,
      @JsonKey(name: 'play_mode') required this.playMode,
      required final List<PlayerModel> players,
      this.flow_8 = true,
      @JsonKey(name: "joker_num") this.jokerNum = 2})
      : _players = players;

  factory _$_PlayModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayModelFromJson(json);

  @override
  final String version;
  @override
  @JsonKey(name: 'play_mode')
  final PlayMode playMode;
  final List<PlayerModel> _players;
  @override
  List<PlayerModel> get players {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

// configuration
  @override
  @JsonKey()
  final bool flow_8;
  @override
  @JsonKey(name: "joker_num")
  final int jokerNum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayModel(version: $version, playMode: $playMode, players: $players, flow_8: $flow_8, jokerNum: $jokerNum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayModel'))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('playMode', playMode))
      ..add(DiagnosticsProperty('players', players))
      ..add(DiagnosticsProperty('flow_8', flow_8))
      ..add(DiagnosticsProperty('jokerNum', jokerNum));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayModel &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.playMode, playMode) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality().equals(other.flow_8, flow_8) &&
            const DeepCollectionEquality().equals(other.jokerNum, jokerNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(playMode),
      const DeepCollectionEquality().hash(_players),
      const DeepCollectionEquality().hash(flow_8),
      const DeepCollectionEquality().hash(jokerNum));

  @JsonKey(ignore: true)
  @override
  _$$_PlayModelCopyWith<_$_PlayModel> get copyWith =>
      __$$_PlayModelCopyWithImpl<_$_PlayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayModelToJson(
      this,
    );
  }
}

abstract class _PlayModel implements PlayModel {
  const factory _PlayModel(
      {required final String version,
      @JsonKey(name: 'play_mode') required final PlayMode playMode,
      required final List<PlayerModel> players,
      final bool flow_8,
      @JsonKey(name: "joker_num") final int jokerNum}) = _$_PlayModel;

  factory _PlayModel.fromJson(Map<String, dynamic> json) =
      _$_PlayModel.fromJson;

  @override
  String get version;
  @override
  @JsonKey(name: 'play_mode')
  PlayMode get playMode;
  @override
  List<PlayerModel> get players;
  @override // configuration
  bool get flow_8;
  @override
  @JsonKey(name: "joker_num")
  int get jokerNum;
  @override
  @JsonKey(ignore: true)
  _$$_PlayModelCopyWith<_$_PlayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
