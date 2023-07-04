// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storyteller_moments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorytellerMoments _$StorytellerMomentsFromJson(Map<String, dynamic> json) {
  return _StorytellerMoments.fromJson(json);
}

/// @nodoc
mixin _$StorytellerMoments {
  String get storyTellerId => throw _privateConstructorUsedError;
  List<Moment> get moments => throw _privateConstructorUsedError;
  String get storyTellerName => throw _privateConstructorUsedError;
  String get storyTellerAvatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorytellerMomentsCopyWith<StorytellerMoments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorytellerMomentsCopyWith<$Res> {
  factory $StorytellerMomentsCopyWith(
          StorytellerMoments value, $Res Function(StorytellerMoments) then) =
      _$StorytellerMomentsCopyWithImpl<$Res, StorytellerMoments>;
  @useResult
  $Res call(
      {String storyTellerId,
      List<Moment> moments,
      String storyTellerName,
      String storyTellerAvatarUrl});
}

/// @nodoc
class _$StorytellerMomentsCopyWithImpl<$Res, $Val extends StorytellerMoments>
    implements $StorytellerMomentsCopyWith<$Res> {
  _$StorytellerMomentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyTellerId = null,
    Object? moments = null,
    Object? storyTellerName = null,
    Object? storyTellerAvatarUrl = null,
  }) {
    return _then(_value.copyWith(
      storyTellerId: null == storyTellerId
          ? _value.storyTellerId
          : storyTellerId // ignore: cast_nullable_to_non_nullable
              as String,
      moments: null == moments
          ? _value.moments
          : moments // ignore: cast_nullable_to_non_nullable
              as List<Moment>,
      storyTellerName: null == storyTellerName
          ? _value.storyTellerName
          : storyTellerName // ignore: cast_nullable_to_non_nullable
              as String,
      storyTellerAvatarUrl: null == storyTellerAvatarUrl
          ? _value.storyTellerAvatarUrl
          : storyTellerAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StorytellerMomentsCopyWith<$Res>
    implements $StorytellerMomentsCopyWith<$Res> {
  factory _$$_StorytellerMomentsCopyWith(_$_StorytellerMoments value,
          $Res Function(_$_StorytellerMoments) then) =
      __$$_StorytellerMomentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String storyTellerId,
      List<Moment> moments,
      String storyTellerName,
      String storyTellerAvatarUrl});
}

/// @nodoc
class __$$_StorytellerMomentsCopyWithImpl<$Res>
    extends _$StorytellerMomentsCopyWithImpl<$Res, _$_StorytellerMoments>
    implements _$$_StorytellerMomentsCopyWith<$Res> {
  __$$_StorytellerMomentsCopyWithImpl(
      _$_StorytellerMoments _value, $Res Function(_$_StorytellerMoments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyTellerId = null,
    Object? moments = null,
    Object? storyTellerName = null,
    Object? storyTellerAvatarUrl = null,
  }) {
    return _then(_$_StorytellerMoments(
      storyTellerId: null == storyTellerId
          ? _value.storyTellerId
          : storyTellerId // ignore: cast_nullable_to_non_nullable
              as String,
      moments: null == moments
          ? _value._moments
          : moments // ignore: cast_nullable_to_non_nullable
              as List<Moment>,
      storyTellerName: null == storyTellerName
          ? _value.storyTellerName
          : storyTellerName // ignore: cast_nullable_to_non_nullable
              as String,
      storyTellerAvatarUrl: null == storyTellerAvatarUrl
          ? _value.storyTellerAvatarUrl
          : storyTellerAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StorytellerMoments extends _StorytellerMoments {
  const _$_StorytellerMoments(
      {required this.storyTellerId,
      required final List<Moment> moments,
      required this.storyTellerName,
      this.storyTellerAvatarUrl = ''})
      : _moments = moments,
        super._();

  factory _$_StorytellerMoments.fromJson(Map<String, dynamic> json) =>
      _$$_StorytellerMomentsFromJson(json);

  @override
  final String storyTellerId;
  final List<Moment> _moments;
  @override
  List<Moment> get moments {
    if (_moments is EqualUnmodifiableListView) return _moments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moments);
  }

  @override
  final String storyTellerName;
  @override
  @JsonKey()
  final String storyTellerAvatarUrl;

  @override
  String toString() {
    return 'StorytellerMoments(storyTellerId: $storyTellerId, moments: $moments, storyTellerName: $storyTellerName, storyTellerAvatarUrl: $storyTellerAvatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorytellerMoments &&
            (identical(other.storyTellerId, storyTellerId) ||
                other.storyTellerId == storyTellerId) &&
            const DeepCollectionEquality().equals(other._moments, _moments) &&
            (identical(other.storyTellerName, storyTellerName) ||
                other.storyTellerName == storyTellerName) &&
            (identical(other.storyTellerAvatarUrl, storyTellerAvatarUrl) ||
                other.storyTellerAvatarUrl == storyTellerAvatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      storyTellerId,
      const DeepCollectionEquality().hash(_moments),
      storyTellerName,
      storyTellerAvatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorytellerMomentsCopyWith<_$_StorytellerMoments> get copyWith =>
      __$$_StorytellerMomentsCopyWithImpl<_$_StorytellerMoments>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorytellerMomentsToJson(
      this,
    );
  }
}

abstract class _StorytellerMoments extends StorytellerMoments {
  const factory _StorytellerMoments(
      {required final String storyTellerId,
      required final List<Moment> moments,
      required final String storyTellerName,
      final String storyTellerAvatarUrl}) = _$_StorytellerMoments;
  const _StorytellerMoments._() : super._();

  factory _StorytellerMoments.fromJson(Map<String, dynamic> json) =
      _$_StorytellerMoments.fromJson;

  @override
  String get storyTellerId;
  @override
  List<Moment> get moments;
  @override
  String get storyTellerName;
  @override
  String get storyTellerAvatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_StorytellerMomentsCopyWith<_$_StorytellerMoments> get copyWith =>
      throw _privateConstructorUsedError;
}

Moment _$MomentFromJson(Map<String, dynamic> json) {
  return _Moment.fromJson(json);
}

/// @nodoc
mixin _$Moment {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;
  int? get videoLength => throw _privateConstructorUsedError;
  MomentItemType get type => throw _privateConstructorUsedError;
  bool get seenByCurrentUser => throw _privateConstructorUsedError;
  bool get likedByCurrentUser => throw _privateConstructorUsedError;
  DateTime get publishDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MomentCopyWith<Moment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MomentCopyWith<$Res> {
  factory $MomentCopyWith(Moment value, $Res Function(Moment) then) =
      _$MomentCopyWithImpl<$Res, Moment>;
  @useResult
  $Res call(
      {String id,
      String path,
      String imageUrl,
      String videoId,
      int? videoLength,
      MomentItemType type,
      bool seenByCurrentUser,
      bool likedByCurrentUser,
      DateTime publishDate});
}

/// @nodoc
class _$MomentCopyWithImpl<$Res, $Val extends Moment>
    implements $MomentCopyWith<$Res> {
  _$MomentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? imageUrl = null,
    Object? videoId = null,
    Object? videoLength = freezed,
    Object? type = null,
    Object? seenByCurrentUser = null,
    Object? likedByCurrentUser = null,
    Object? publishDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      videoLength: freezed == videoLength
          ? _value.videoLength
          : videoLength // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MomentItemType,
      seenByCurrentUser: null == seenByCurrentUser
          ? _value.seenByCurrentUser
          : seenByCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      likedByCurrentUser: null == likedByCurrentUser
          ? _value.likedByCurrentUser
          : likedByCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MomentCopyWith<$Res> implements $MomentCopyWith<$Res> {
  factory _$$_MomentCopyWith(_$_Moment value, $Res Function(_$_Moment) then) =
      __$$_MomentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String path,
      String imageUrl,
      String videoId,
      int? videoLength,
      MomentItemType type,
      bool seenByCurrentUser,
      bool likedByCurrentUser,
      DateTime publishDate});
}

/// @nodoc
class __$$_MomentCopyWithImpl<$Res>
    extends _$MomentCopyWithImpl<$Res, _$_Moment>
    implements _$$_MomentCopyWith<$Res> {
  __$$_MomentCopyWithImpl(_$_Moment _value, $Res Function(_$_Moment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? imageUrl = null,
    Object? videoId = null,
    Object? videoLength = freezed,
    Object? type = null,
    Object? seenByCurrentUser = null,
    Object? likedByCurrentUser = null,
    Object? publishDate = null,
  }) {
    return _then(_$_Moment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      videoLength: freezed == videoLength
          ? _value.videoLength
          : videoLength // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MomentItemType,
      seenByCurrentUser: null == seenByCurrentUser
          ? _value.seenByCurrentUser
          : seenByCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      likedByCurrentUser: null == likedByCurrentUser
          ? _value.likedByCurrentUser
          : likedByCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Moment extends _Moment {
  const _$_Moment(
      {required this.id,
      required this.path,
      required this.imageUrl,
      required this.videoId,
      required this.videoLength,
      required this.type,
      required this.seenByCurrentUser,
      required this.likedByCurrentUser,
      required this.publishDate})
      : super._();

  factory _$_Moment.fromJson(Map<String, dynamic> json) =>
      _$$_MomentFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final String imageUrl;
  @override
  final String videoId;
  @override
  final int? videoLength;
  @override
  final MomentItemType type;
  @override
  final bool seenByCurrentUser;
  @override
  final bool likedByCurrentUser;
  @override
  final DateTime publishDate;

  @override
  String toString() {
    return 'Moment(id: $id, path: $path, imageUrl: $imageUrl, videoId: $videoId, videoLength: $videoLength, type: $type, seenByCurrentUser: $seenByCurrentUser, likedByCurrentUser: $likedByCurrentUser, publishDate: $publishDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Moment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.videoLength, videoLength) ||
                other.videoLength == videoLength) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.seenByCurrentUser, seenByCurrentUser) ||
                other.seenByCurrentUser == seenByCurrentUser) &&
            (identical(other.likedByCurrentUser, likedByCurrentUser) ||
                other.likedByCurrentUser == likedByCurrentUser) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, imageUrl, videoId,
      videoLength, type, seenByCurrentUser, likedByCurrentUser, publishDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MomentCopyWith<_$_Moment> get copyWith =>
      __$$_MomentCopyWithImpl<_$_Moment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MomentToJson(
      this,
    );
  }
}

abstract class _Moment extends Moment {
  const factory _Moment(
      {required final String id,
      required final String path,
      required final String imageUrl,
      required final String videoId,
      required final int? videoLength,
      required final MomentItemType type,
      required final bool seenByCurrentUser,
      required final bool likedByCurrentUser,
      required final DateTime publishDate}) = _$_Moment;
  const _Moment._() : super._();

  factory _Moment.fromJson(Map<String, dynamic> json) = _$_Moment.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  String get imageUrl;
  @override
  String get videoId;
  @override
  int? get videoLength;
  @override
  MomentItemType get type;
  @override
  bool get seenByCurrentUser;
  @override
  bool get likedByCurrentUser;
  @override
  DateTime get publishDate;
  @override
  @JsonKey(ignore: true)
  _$$_MomentCopyWith<_$_Moment> get copyWith =>
      throw _privateConstructorUsedError;
}
