// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preference_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreferenceResponse _$PreferenceResponseFromJson(Map<String, dynamic> json) {
  return _PreferenceResponse.fromJson(json);
}

/// @nodoc
mixin _$PreferenceResponse {
  bool get latestUpdates => throw _privateConstructorUsedError;
  bool get forYou => throw _privateConstructorUsedError;
  bool get trending => throw _privateConstructorUsedError;
  bool get breakingStories => throw _privateConstructorUsedError;
  bool get storytellerUpdates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferenceResponseCopyWith<PreferenceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceResponseCopyWith<$Res> {
  factory $PreferenceResponseCopyWith(
          PreferenceResponse value, $Res Function(PreferenceResponse) then) =
      _$PreferenceResponseCopyWithImpl<$Res, PreferenceResponse>;
  @useResult
  $Res call(
      {bool latestUpdates,
      bool forYou,
      bool trending,
      bool breakingStories,
      bool storytellerUpdates});
}

/// @nodoc
class _$PreferenceResponseCopyWithImpl<$Res, $Val extends PreferenceResponse>
    implements $PreferenceResponseCopyWith<$Res> {
  _$PreferenceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestUpdates = null,
    Object? forYou = null,
    Object? trending = null,
    Object? breakingStories = null,
    Object? storytellerUpdates = null,
  }) {
    return _then(_value.copyWith(
      latestUpdates: null == latestUpdates
          ? _value.latestUpdates
          : latestUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      forYou: null == forYou
          ? _value.forYou
          : forYou // ignore: cast_nullable_to_non_nullable
              as bool,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as bool,
      breakingStories: null == breakingStories
          ? _value.breakingStories
          : breakingStories // ignore: cast_nullable_to_non_nullable
              as bool,
      storytellerUpdates: null == storytellerUpdates
          ? _value.storytellerUpdates
          : storytellerUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreferenceResponseCopyWith<$Res>
    implements $PreferenceResponseCopyWith<$Res> {
  factory _$$_PreferenceResponseCopyWith(_$_PreferenceResponse value,
          $Res Function(_$_PreferenceResponse) then) =
      __$$_PreferenceResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool latestUpdates,
      bool forYou,
      bool trending,
      bool breakingStories,
      bool storytellerUpdates});
}

/// @nodoc
class __$$_PreferenceResponseCopyWithImpl<$Res>
    extends _$PreferenceResponseCopyWithImpl<$Res, _$_PreferenceResponse>
    implements _$$_PreferenceResponseCopyWith<$Res> {
  __$$_PreferenceResponseCopyWithImpl(
      _$_PreferenceResponse _value, $Res Function(_$_PreferenceResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestUpdates = null,
    Object? forYou = null,
    Object? trending = null,
    Object? breakingStories = null,
    Object? storytellerUpdates = null,
  }) {
    return _then(_$_PreferenceResponse(
      latestUpdates: null == latestUpdates
          ? _value.latestUpdates
          : latestUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      forYou: null == forYou
          ? _value.forYou
          : forYou // ignore: cast_nullable_to_non_nullable
              as bool,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as bool,
      breakingStories: null == breakingStories
          ? _value.breakingStories
          : breakingStories // ignore: cast_nullable_to_non_nullable
              as bool,
      storytellerUpdates: null == storytellerUpdates
          ? _value.storytellerUpdates
          : storytellerUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreferenceResponse implements _PreferenceResponse {
  const _$_PreferenceResponse(
      {required this.latestUpdates,
      required this.forYou,
      required this.trending,
      required this.breakingStories,
      required this.storytellerUpdates});

  factory _$_PreferenceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PreferenceResponseFromJson(json);

  @override
  final bool latestUpdates;
  @override
  final bool forYou;
  @override
  final bool trending;
  @override
  final bool breakingStories;
  @override
  final bool storytellerUpdates;

  @override
  String toString() {
    return 'PreferenceResponse(latestUpdates: $latestUpdates, forYou: $forYou, trending: $trending, breakingStories: $breakingStories, storytellerUpdates: $storytellerUpdates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferenceResponse &&
            (identical(other.latestUpdates, latestUpdates) ||
                other.latestUpdates == latestUpdates) &&
            (identical(other.forYou, forYou) || other.forYou == forYou) &&
            (identical(other.trending, trending) ||
                other.trending == trending) &&
            (identical(other.breakingStories, breakingStories) ||
                other.breakingStories == breakingStories) &&
            (identical(other.storytellerUpdates, storytellerUpdates) ||
                other.storytellerUpdates == storytellerUpdates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latestUpdates, forYou, trending,
      breakingStories, storytellerUpdates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreferenceResponseCopyWith<_$_PreferenceResponse> get copyWith =>
      __$$_PreferenceResponseCopyWithImpl<_$_PreferenceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreferenceResponseToJson(
      this,
    );
  }
}

abstract class _PreferenceResponse implements PreferenceResponse {
  const factory _PreferenceResponse(
      {required final bool latestUpdates,
      required final bool forYou,
      required final bool trending,
      required final bool breakingStories,
      required final bool storytellerUpdates}) = _$_PreferenceResponse;

  factory _PreferenceResponse.fromJson(Map<String, dynamic> json) =
      _$_PreferenceResponse.fromJson;

  @override
  bool get latestUpdates;
  @override
  bool get forYou;
  @override
  bool get trending;
  @override
  bool get breakingStories;
  @override
  bool get storytellerUpdates;
  @override
  @JsonKey(ignore: true)
  _$$_PreferenceResponseCopyWith<_$_PreferenceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
