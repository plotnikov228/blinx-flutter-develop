// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preference_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreferenceRequestBody _$PreferenceRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _PreferenceRequestBody.fromJson(json);
}

/// @nodoc
mixin _$PreferenceRequestBody {
  bool get latestUpdates => throw _privateConstructorUsedError;
  bool get forYou => throw _privateConstructorUsedError;
  bool get trending => throw _privateConstructorUsedError;
  bool get breakingStories => throw _privateConstructorUsedError;
  bool get storytellerUpdates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferenceRequestBodyCopyWith<PreferenceRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceRequestBodyCopyWith<$Res> {
  factory $PreferenceRequestBodyCopyWith(PreferenceRequestBody value,
          $Res Function(PreferenceRequestBody) then) =
      _$PreferenceRequestBodyCopyWithImpl<$Res, PreferenceRequestBody>;
  @useResult
  $Res call(
      {bool latestUpdates,
      bool forYou,
      bool trending,
      bool breakingStories,
      bool storytellerUpdates});
}

/// @nodoc
class _$PreferenceRequestBodyCopyWithImpl<$Res,
        $Val extends PreferenceRequestBody>
    implements $PreferenceRequestBodyCopyWith<$Res> {
  _$PreferenceRequestBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$_PreferenceRequestBodyCopyWith<$Res>
    implements $PreferenceRequestBodyCopyWith<$Res> {
  factory _$$_PreferenceRequestBodyCopyWith(_$_PreferenceRequestBody value,
          $Res Function(_$_PreferenceRequestBody) then) =
      __$$_PreferenceRequestBodyCopyWithImpl<$Res>;
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
class __$$_PreferenceRequestBodyCopyWithImpl<$Res>
    extends _$PreferenceRequestBodyCopyWithImpl<$Res, _$_PreferenceRequestBody>
    implements _$$_PreferenceRequestBodyCopyWith<$Res> {
  __$$_PreferenceRequestBodyCopyWithImpl(_$_PreferenceRequestBody _value,
      $Res Function(_$_PreferenceRequestBody) _then)
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
    return _then(_$_PreferenceRequestBody(
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
class _$_PreferenceRequestBody implements _PreferenceRequestBody {
  const _$_PreferenceRequestBody(
      {required this.latestUpdates,
      required this.forYou,
      required this.trending,
      required this.breakingStories,
      required this.storytellerUpdates});

  factory _$_PreferenceRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_PreferenceRequestBodyFromJson(json);

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
    return 'PreferenceRequestBody(latestUpdates: $latestUpdates, forYou: $forYou, trending: $trending, breakingStories: $breakingStories, storytellerUpdates: $storytellerUpdates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferenceRequestBody &&
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
  _$$_PreferenceRequestBodyCopyWith<_$_PreferenceRequestBody> get copyWith =>
      __$$_PreferenceRequestBodyCopyWithImpl<_$_PreferenceRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreferenceRequestBodyToJson(
      this,
    );
  }
}

abstract class _PreferenceRequestBody implements PreferenceRequestBody {
  const factory _PreferenceRequestBody(
      {required final bool latestUpdates,
      required final bool forYou,
      required final bool trending,
      required final bool breakingStories,
      required final bool storytellerUpdates}) = _$_PreferenceRequestBody;

  factory _PreferenceRequestBody.fromJson(Map<String, dynamic> json) =
      _$_PreferenceRequestBody.fromJson;

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
  _$$_PreferenceRequestBodyCopyWith<_$_PreferenceRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
