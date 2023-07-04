// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentsResponse _$CommentsResponseFromJson(Map<String, dynamic> json) {
  return _CommentsResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentsResponse {
  int get id => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  DateTime get createDate => throw _privateConstructorUsedError;
  DateTime get updateDate => throw _privateConstructorUsedError;
  CommentOwner get owner => throw _privateConstructorUsedError;
  String get articlePath => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool? get isLiked => throw _privateConstructorUsedError;
  int? get totalLikes => throw _privateConstructorUsedError;
  List<CommentsResponse> get replies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsResponseCopyWith<CommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsResponseCopyWith<$Res> {
  factory $CommentsResponseCopyWith(
          CommentsResponse value, $Res Function(CommentsResponse) then) =
      _$CommentsResponseCopyWithImpl<$Res, CommentsResponse>;
  @useResult
  $Res call(
      {int id,
      int version,
      DateTime createDate,
      DateTime updateDate,
      CommentOwner owner,
      String articlePath,
      String content,
      bool? isLiked,
      int? totalLikes,
      List<CommentsResponse> replies});

  $CommentOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$CommentsResponseCopyWithImpl<$Res, $Val extends CommentsResponse>
    implements $CommentsResponseCopyWith<$Res> {
  _$CommentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? createDate = null,
    Object? updateDate = null,
    Object? owner = null,
    Object? articlePath = null,
    Object? content = null,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDate: null == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as CommentOwner,
      articlePath: null == articlePath
          ? _value.articlePath
          : articlePath // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentsResponse>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentOwnerCopyWith<$Res> get owner {
    return $CommentOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentsResponseCopyWith<$Res>
    implements $CommentsResponseCopyWith<$Res> {
  factory _$$_CommentsResponseCopyWith(
          _$_CommentsResponse value, $Res Function(_$_CommentsResponse) then) =
      __$$_CommentsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int version,
      DateTime createDate,
      DateTime updateDate,
      CommentOwner owner,
      String articlePath,
      String content,
      bool? isLiked,
      int? totalLikes,
      List<CommentsResponse> replies});

  @override
  $CommentOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_CommentsResponseCopyWithImpl<$Res>
    extends _$CommentsResponseCopyWithImpl<$Res, _$_CommentsResponse>
    implements _$$_CommentsResponseCopyWith<$Res> {
  __$$_CommentsResponseCopyWithImpl(
      _$_CommentsResponse _value, $Res Function(_$_CommentsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? createDate = null,
    Object? updateDate = null,
    Object? owner = null,
    Object? articlePath = null,
    Object? content = null,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
    Object? replies = null,
  }) {
    return _then(_$_CommentsResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDate: null == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as CommentOwner,
      articlePath: null == articlePath
          ? _value.articlePath
          : articlePath // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentsResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentsResponse extends _CommentsResponse {
  const _$_CommentsResponse(
      {required this.id,
      required this.version,
      required this.createDate,
      required this.updateDate,
      required this.owner,
      required this.articlePath,
      required this.content,
      required this.isLiked,
      required this.totalLikes,
      required final List<CommentsResponse> replies})
      : _replies = replies,
        super._();

  factory _$_CommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CommentsResponseFromJson(json);

  @override
  final int id;
  @override
  final int version;
  @override
  final DateTime createDate;
  @override
  final DateTime updateDate;
  @override
  final CommentOwner owner;
  @override
  final String articlePath;
  @override
  final String content;
  @override
  final bool? isLiked;
  @override
  final int? totalLikes;
  final List<CommentsResponse> _replies;
  @override
  List<CommentsResponse> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'CommentsResponse(id: $id, version: $version, createDate: $createDate, updateDate: $updateDate, owner: $owner, articlePath: $articlePath, content: $content, isLiked: $isLiked, totalLikes: $totalLikes, replies: $replies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.articlePath, articlePath) ||
                other.articlePath == articlePath) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      version,
      createDate,
      updateDate,
      owner,
      articlePath,
      content,
      isLiked,
      totalLikes,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentsResponseCopyWith<_$_CommentsResponse> get copyWith =>
      __$$_CommentsResponseCopyWithImpl<_$_CommentsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentsResponseToJson(
      this,
    );
  }
}

abstract class _CommentsResponse extends CommentsResponse {
  const factory _CommentsResponse(
      {required final int id,
      required final int version,
      required final DateTime createDate,
      required final DateTime updateDate,
      required final CommentOwner owner,
      required final String articlePath,
      required final String content,
      required final bool? isLiked,
      required final int? totalLikes,
      required final List<CommentsResponse> replies}) = _$_CommentsResponse;
  const _CommentsResponse._() : super._();

  factory _CommentsResponse.fromJson(Map<String, dynamic> json) =
      _$_CommentsResponse.fromJson;

  @override
  int get id;
  @override
  int get version;
  @override
  DateTime get createDate;
  @override
  DateTime get updateDate;
  @override
  CommentOwner get owner;
  @override
  String get articlePath;
  @override
  String get content;
  @override
  bool? get isLiked;
  @override
  int? get totalLikes;
  @override
  List<CommentsResponse> get replies;
  @override
  @JsonKey(ignore: true)
  _$$_CommentsResponseCopyWith<_$_CommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
