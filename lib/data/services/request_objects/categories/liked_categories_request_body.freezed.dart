// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_categories_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikedCategoriesRequestBody _$LikedCategoriesRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _LikedCategoriesRequestBody.fromJson(json);
}

/// @nodoc
mixin _$LikedCategoriesRequestBody {
  List<String> get likedCategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikedCategoriesRequestBodyCopyWith<LikedCategoriesRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedCategoriesRequestBodyCopyWith<$Res> {
  factory $LikedCategoriesRequestBodyCopyWith(LikedCategoriesRequestBody value,
          $Res Function(LikedCategoriesRequestBody) then) =
      _$LikedCategoriesRequestBodyCopyWithImpl<$Res,
          LikedCategoriesRequestBody>;
  @useResult
  $Res call({List<String> likedCategories});
}

/// @nodoc
class _$LikedCategoriesRequestBodyCopyWithImpl<$Res,
        $Val extends LikedCategoriesRequestBody>
    implements $LikedCategoriesRequestBodyCopyWith<$Res> {
  _$LikedCategoriesRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likedCategories = null,
  }) {
    return _then(_value.copyWith(
      likedCategories: null == likedCategories
          ? _value.likedCategories
          : likedCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikedCategoriesRequestBodyCopyWith<$Res>
    implements $LikedCategoriesRequestBodyCopyWith<$Res> {
  factory _$$_LikedCategoriesRequestBodyCopyWith(
          _$_LikedCategoriesRequestBody value,
          $Res Function(_$_LikedCategoriesRequestBody) then) =
      __$$_LikedCategoriesRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> likedCategories});
}

/// @nodoc
class __$$_LikedCategoriesRequestBodyCopyWithImpl<$Res>
    extends _$LikedCategoriesRequestBodyCopyWithImpl<$Res,
        _$_LikedCategoriesRequestBody>
    implements _$$_LikedCategoriesRequestBodyCopyWith<$Res> {
  __$$_LikedCategoriesRequestBodyCopyWithImpl(
      _$_LikedCategoriesRequestBody _value,
      $Res Function(_$_LikedCategoriesRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likedCategories = null,
  }) {
    return _then(_$_LikedCategoriesRequestBody(
      likedCategories: null == likedCategories
          ? _value._likedCategories
          : likedCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikedCategoriesRequestBody implements _LikedCategoriesRequestBody {
  const _$_LikedCategoriesRequestBody(
      {required final List<String> likedCategories})
      : _likedCategories = likedCategories;

  factory _$_LikedCategoriesRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_LikedCategoriesRequestBodyFromJson(json);

  final List<String> _likedCategories;
  @override
  List<String> get likedCategories {
    if (_likedCategories is EqualUnmodifiableListView) return _likedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedCategories);
  }

  @override
  String toString() {
    return 'LikedCategoriesRequestBody(likedCategories: $likedCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikedCategoriesRequestBody &&
            const DeepCollectionEquality()
                .equals(other._likedCategories, _likedCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_likedCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikedCategoriesRequestBodyCopyWith<_$_LikedCategoriesRequestBody>
      get copyWith => __$$_LikedCategoriesRequestBodyCopyWithImpl<
          _$_LikedCategoriesRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikedCategoriesRequestBodyToJson(
      this,
    );
  }
}

abstract class _LikedCategoriesRequestBody
    implements LikedCategoriesRequestBody {
  const factory _LikedCategoriesRequestBody(
          {required final List<String> likedCategories}) =
      _$_LikedCategoriesRequestBody;

  factory _LikedCategoriesRequestBody.fromJson(Map<String, dynamic> json) =
      _$_LikedCategoriesRequestBody.fromJson;

  @override
  List<String> get likedCategories;
  @override
  @JsonKey(ignore: true)
  _$$_LikedCategoriesRequestBodyCopyWith<_$_LikedCategoriesRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}
