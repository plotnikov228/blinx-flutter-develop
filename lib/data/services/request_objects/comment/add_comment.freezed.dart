// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCommentBody _$AddCommentBodyFromJson(Map<String, dynamic> json) {
  return _AddCommentBody.fromJson(json);
}

/// @nodoc
mixin _$AddCommentBody {
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCommentBodyCopyWith<AddCommentBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentBodyCopyWith<$Res> {
  factory $AddCommentBodyCopyWith(
          AddCommentBody value, $Res Function(AddCommentBody) then) =
      _$AddCommentBodyCopyWithImpl<$Res, AddCommentBody>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$AddCommentBodyCopyWithImpl<$Res, $Val extends AddCommentBody>
    implements $AddCommentBodyCopyWith<$Res> {
  _$AddCommentBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCommentBodyCopyWith<$Res>
    implements $AddCommentBodyCopyWith<$Res> {
  factory _$$_AddCommentBodyCopyWith(
          _$_AddCommentBody value, $Res Function(_$_AddCommentBody) then) =
      __$$_AddCommentBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$_AddCommentBodyCopyWithImpl<$Res>
    extends _$AddCommentBodyCopyWithImpl<$Res, _$_AddCommentBody>
    implements _$$_AddCommentBodyCopyWith<$Res> {
  __$$_AddCommentBodyCopyWithImpl(
      _$_AddCommentBody _value, $Res Function(_$_AddCommentBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_AddCommentBody(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddCommentBody implements _AddCommentBody {
  const _$_AddCommentBody({required this.content});

  factory _$_AddCommentBody.fromJson(Map<String, dynamic> json) =>
      _$$_AddCommentBodyFromJson(json);

  @override
  final String content;

  @override
  String toString() {
    return 'AddCommentBody(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCommentBody &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCommentBodyCopyWith<_$_AddCommentBody> get copyWith =>
      __$$_AddCommentBodyCopyWithImpl<_$_AddCommentBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddCommentBodyToJson(
      this,
    );
  }
}

abstract class _AddCommentBody implements AddCommentBody {
  const factory _AddCommentBody({required final String content}) =
      _$_AddCommentBody;

  factory _AddCommentBody.fromJson(Map<String, dynamic> json) =
      _$_AddCommentBody.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_AddCommentBodyCopyWith<_$_AddCommentBody> get copyWith =>
      throw _privateConstructorUsedError;
}
