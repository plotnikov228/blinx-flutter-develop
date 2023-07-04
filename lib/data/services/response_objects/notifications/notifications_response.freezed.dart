// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationsResponse _$NotificationsResponseFromJson(
    Map<String, dynamic> json) {
  return _NotificationsResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationsResponse {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  Article get article => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsResponseCopyWith<NotificationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsResponseCopyWith<$Res> {
  factory $NotificationsResponseCopyWith(NotificationsResponse value,
          $Res Function(NotificationsResponse) then) =
      _$NotificationsResponseCopyWithImpl<$Res, NotificationsResponse>;
  @useResult
  $Res call({int id, String title, bool isRead, Article article});

  $ArticleCopyWith<$Res> get article;
}

/// @nodoc
class _$NotificationsResponseCopyWithImpl<$Res,
        $Val extends NotificationsResponse>
    implements $NotificationsResponseCopyWith<$Res> {
  _$NotificationsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isRead = null,
    Object? article = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationsResponseCopyWith<$Res>
    implements $NotificationsResponseCopyWith<$Res> {
  factory _$$_NotificationsResponseCopyWith(_$_NotificationsResponse value,
          $Res Function(_$_NotificationsResponse) then) =
      __$$_NotificationsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, bool isRead, Article article});

  @override
  $ArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$$_NotificationsResponseCopyWithImpl<$Res>
    extends _$NotificationsResponseCopyWithImpl<$Res, _$_NotificationsResponse>
    implements _$$_NotificationsResponseCopyWith<$Res> {
  __$$_NotificationsResponseCopyWithImpl(_$_NotificationsResponse _value,
      $Res Function(_$_NotificationsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isRead = null,
    Object? article = null,
  }) {
    return _then(_$_NotificationsResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationsResponse extends _NotificationsResponse {
  const _$_NotificationsResponse(
      {required this.id,
      required this.title,
      required this.isRead,
      required this.article})
      : super._();

  factory _$_NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationsResponseFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final bool isRead;
  @override
  final Article article;

  @override
  String toString() {
    return 'NotificationsResponse(id: $id, title: $title, isRead: $isRead, article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.article, article) || other.article == article));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, isRead, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationsResponseCopyWith<_$_NotificationsResponse> get copyWith =>
      __$$_NotificationsResponseCopyWithImpl<_$_NotificationsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationsResponseToJson(
      this,
    );
  }
}

abstract class _NotificationsResponse extends NotificationsResponse {
  const factory _NotificationsResponse(
      {required final int id,
      required final String title,
      required final bool isRead,
      required final Article article}) = _$_NotificationsResponse;
  const _NotificationsResponse._() : super._();

  factory _NotificationsResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationsResponse.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  bool get isRead;
  @override
  Article get article;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationsResponseCopyWith<_$_NotificationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

_Storyteller _$_StorytellerFromJson(Map<String, dynamic> json) {
  return __Storyteller.fromJson(json);
}

/// @nodoc
mixin _$_Storyteller {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  _Avatar get avatar => throw _privateConstructorUsedError;
  bool get followed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StorytellerCopyWith<_Storyteller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StorytellerCopyWith<$Res> {
  factory _$StorytellerCopyWith(
          _Storyteller value, $Res Function(_Storyteller) then) =
      __$StorytellerCopyWithImpl<$Res, _Storyteller>;
  @useResult
  $Res call(
      {String id,
      String path,
      String name,
      String displayName,
      _Avatar avatar,
      bool followed});

  _$AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$StorytellerCopyWithImpl<$Res, $Val extends _Storyteller>
    implements _$StorytellerCopyWith<$Res> {
  __$StorytellerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
    Object? displayName = null,
    Object? avatar = null,
    Object? followed = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as _Avatar,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$AvatarCopyWith<$Res> get avatar {
    return _$AvatarCopyWith<$Res>(_value.avatar, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$__StorytellerCopyWith<$Res>
    implements _$StorytellerCopyWith<$Res> {
  factory _$$__StorytellerCopyWith(
          _$__Storyteller value, $Res Function(_$__Storyteller) then) =
      __$$__StorytellerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String path,
      String name,
      String displayName,
      _Avatar avatar,
      bool followed});

  @override
  _$AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$__StorytellerCopyWithImpl<$Res>
    extends __$StorytellerCopyWithImpl<$Res, _$__Storyteller>
    implements _$$__StorytellerCopyWith<$Res> {
  __$$__StorytellerCopyWithImpl(
      _$__Storyteller _value, $Res Function(_$__Storyteller) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
    Object? displayName = null,
    Object? avatar = null,
    Object? followed = null,
  }) {
    return _then(_$__Storyteller(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as _Avatar,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Storyteller implements __Storyteller {
  const _$__Storyteller(
      {required this.id,
      required this.path,
      required this.name,
      required this.displayName,
      required this.avatar,
      required this.followed});

  factory _$__Storyteller.fromJson(Map<String, dynamic> json) =>
      _$$__StorytellerFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final String name;
  @override
  final String displayName;
  @override
  final _Avatar avatar;
  @override
  final bool followed;

  @override
  String toString() {
    return '_Storyteller(id: $id, path: $path, name: $name, displayName: $displayName, avatar: $avatar, followed: $followed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Storyteller &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.followed, followed) ||
                other.followed == followed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, path, name, displayName, avatar, followed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__StorytellerCopyWith<_$__Storyteller> get copyWith =>
      __$$__StorytellerCopyWithImpl<_$__Storyteller>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__StorytellerToJson(
      this,
    );
  }
}

abstract class __Storyteller implements _Storyteller {
  const factory __Storyteller(
      {required final String id,
      required final String path,
      required final String name,
      required final String displayName,
      required final _Avatar avatar,
      required final bool followed}) = _$__Storyteller;

  factory __Storyteller.fromJson(Map<String, dynamic> json) =
      _$__Storyteller.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  String get name;
  @override
  String get displayName;
  @override
  _Avatar get avatar;
  @override
  bool get followed;
  @override
  @JsonKey(ignore: true)
  _$$__StorytellerCopyWith<_$__Storyteller> get copyWith =>
      throw _privateConstructorUsedError;
}

_Avatar _$_AvatarFromJson(Map<String, dynamic> json) {
  return __Avatar.fromJson(json);
}

/// @nodoc
mixin _$_Avatar {
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AvatarCopyWith<_Avatar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AvatarCopyWith<$Res> {
  factory _$AvatarCopyWith(_Avatar value, $Res Function(_Avatar) then) =
      __$AvatarCopyWithImpl<$Res, _Avatar>;
  @useResult
  $Res call({String avatar});
}

/// @nodoc
class __$AvatarCopyWithImpl<$Res, $Val extends _Avatar>
    implements _$AvatarCopyWith<$Res> {
  __$AvatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__AvatarCopyWith<$Res> implements _$AvatarCopyWith<$Res> {
  factory _$$__AvatarCopyWith(
          _$__Avatar value, $Res Function(_$__Avatar) then) =
      __$$__AvatarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String avatar});
}

/// @nodoc
class __$$__AvatarCopyWithImpl<$Res>
    extends __$AvatarCopyWithImpl<$Res, _$__Avatar>
    implements _$$__AvatarCopyWith<$Res> {
  __$$__AvatarCopyWithImpl(_$__Avatar _value, $Res Function(_$__Avatar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_$__Avatar(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Avatar implements __Avatar {
  const _$__Avatar({required this.avatar});

  factory _$__Avatar.fromJson(Map<String, dynamic> json) =>
      _$$__AvatarFromJson(json);

  @override
  final String avatar;

  @override
  String toString() {
    return '_Avatar(avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Avatar &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__AvatarCopyWith<_$__Avatar> get copyWith =>
      __$$__AvatarCopyWithImpl<_$__Avatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__AvatarToJson(
      this,
    );
  }
}

abstract class __Avatar implements _Avatar {
  const factory __Avatar({required final String avatar}) = _$__Avatar;

  factory __Avatar.fromJson(Map<String, dynamic> json) = _$__Avatar.fromJson;

  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$__AvatarCopyWith<_$__Avatar> get copyWith =>
      throw _privateConstructorUsedError;
}
