// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticlesResponse _$ArticlesResponseFromJson(Map<String, dynamic> json) {
  return _ArticlesResponse.fromJson(json);
}

/// @nodoc
mixin _$ArticlesResponse {
  int get total => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  List<Article> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlesResponseCopyWith<ArticlesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesResponseCopyWith<$Res> {
  factory $ArticlesResponseCopyWith(
          ArticlesResponse value, $Res Function(ArticlesResponse) then) =
      _$ArticlesResponseCopyWithImpl<$Res, ArticlesResponse>;
  @useResult
  $Res call({int total, int offset, int limit, List<Article> results});
}

/// @nodoc
class _$ArticlesResponseCopyWithImpl<$Res, $Val extends ArticlesResponse>
    implements $ArticlesResponseCopyWith<$Res> {
  _$ArticlesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? offset = null,
    Object? limit = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticlesResponseCopyWith<$Res>
    implements $ArticlesResponseCopyWith<$Res> {
  factory _$$_ArticlesResponseCopyWith(
          _$_ArticlesResponse value, $Res Function(_$_ArticlesResponse) then) =
      __$$_ArticlesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int offset, int limit, List<Article> results});
}

/// @nodoc
class __$$_ArticlesResponseCopyWithImpl<$Res>
    extends _$ArticlesResponseCopyWithImpl<$Res, _$_ArticlesResponse>
    implements _$$_ArticlesResponseCopyWith<$Res> {
  __$$_ArticlesResponseCopyWithImpl(
      _$_ArticlesResponse _value, $Res Function(_$_ArticlesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? offset = null,
    Object? limit = null,
    Object? results = null,
  }) {
    return _then(_$_ArticlesResponse(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticlesResponse extends _ArticlesResponse {
  const _$_ArticlesResponse(
      {required this.total,
      required this.offset,
      required this.limit,
      required final List<Article> results})
      : _results = results,
        super._();

  factory _$_ArticlesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ArticlesResponseFromJson(json);

  @override
  final int total;
  @override
  final int offset;
  @override
  final int limit;
  final List<Article> _results;
  @override
  List<Article> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ArticlesResponse(total: $total, offset: $offset, limit: $limit, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticlesResponse &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, offset, limit,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticlesResponseCopyWith<_$_ArticlesResponse> get copyWith =>
      __$$_ArticlesResponseCopyWithImpl<_$_ArticlesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticlesResponseToJson(
      this,
    );
  }
}

abstract class _ArticlesResponse extends ArticlesResponse {
  const factory _ArticlesResponse(
      {required final int total,
      required final int offset,
      required final int limit,
      required final List<Article> results}) = _$_ArticlesResponse;
  const _ArticlesResponse._() : super._();

  factory _ArticlesResponse.fromJson(Map<String, dynamic> json) =
      _$_ArticlesResponse.fromJson;

  @override
  int get total;
  @override
  int get offset;
  @override
  int get limit;
  @override
  List<Article> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ArticlesResponseCopyWith<_$_ArticlesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$_Storyteller {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  _Avatar? get avatar => throw _privateConstructorUsedError;
  bool get followed => throw _privateConstructorUsedError;

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
      _Avatar? avatar,
      bool followed});

  _$AvatarCopyWith<$Res>? get avatar;
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
    Object? avatar = freezed,
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
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as _Avatar?,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$AvatarCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return _$AvatarCopyWith<$Res>(_value.avatar!, (value) {
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
      _Avatar? avatar,
      bool followed});

  @override
  _$AvatarCopyWith<$Res>? get avatar;
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
    Object? avatar = freezed,
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
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as _Avatar?,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$__Storyteller implements __Storyteller {
  const _$__Storyteller(
      {required this.id,
      required this.path,
      required this.name,
      required this.displayName,
      required this.avatar,
      required this.followed});

  @override
  final String id;
  @override
  final String path;
  @override
  final String name;
  @override
  final String displayName;
  @override
  final _Avatar? avatar;
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

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, path, name, displayName, avatar, followed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__StorytellerCopyWith<_$__Storyteller> get copyWith =>
      __$$__StorytellerCopyWithImpl<_$__Storyteller>(this, _$identity);
}

abstract class __Storyteller implements _Storyteller {
  const factory __Storyteller(
      {required final String id,
      required final String path,
      required final String name,
      required final String displayName,
      required final _Avatar? avatar,
      required final bool followed}) = _$__Storyteller;

  @override
  String get id;
  @override
  String get path;
  @override
  String get name;
  @override
  String get displayName;
  @override
  _Avatar? get avatar;
  @override
  bool get followed;
  @override
  @JsonKey(ignore: true)
  _$$__StorytellerCopyWith<_$__Storyteller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$_Avatar {
  String get avatar => throw _privateConstructorUsedError;

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

class _$__Avatar implements __Avatar {
  const _$__Avatar({required this.avatar});

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

  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__AvatarCopyWith<_$__Avatar> get copyWith =>
      __$$__AvatarCopyWithImpl<_$__Avatar>(this, _$identity);
}

abstract class __Avatar implements _Avatar {
  const factory __Avatar({required final String avatar}) = _$__Avatar;

  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$__AvatarCopyWith<_$__Avatar> get copyWith =>
      throw _privateConstructorUsedError;
}
