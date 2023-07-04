// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplyCommentBody _$ReplyCommentBodyFromJson(Map<String, dynamic> json) {
  return _ReplyCommentBody.fromJson(json);
}

/// @nodoc
mixin _$ReplyCommentBody {
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyCommentBodyCopyWith<ReplyCommentBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCommentBodyCopyWith<$Res> {
  factory $ReplyCommentBodyCopyWith(
          ReplyCommentBody value, $Res Function(ReplyCommentBody) then) =
      _$ReplyCommentBodyCopyWithImpl<$Res, ReplyCommentBody>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$ReplyCommentBodyCopyWithImpl<$Res, $Val extends ReplyCommentBody>
    implements $ReplyCommentBodyCopyWith<$Res> {
  _$ReplyCommentBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$_ReplyCommentBodyCopyWith<$Res>
    implements $ReplyCommentBodyCopyWith<$Res> {
  factory _$$_ReplyCommentBodyCopyWith(
          _$_ReplyCommentBody value, $Res Function(_$_ReplyCommentBody) then) =
      __$$_ReplyCommentBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$_ReplyCommentBodyCopyWithImpl<$Res>
    extends _$ReplyCommentBodyCopyWithImpl<$Res, _$_ReplyCommentBody>
    implements _$$_ReplyCommentBodyCopyWith<$Res> {
  __$$_ReplyCommentBodyCopyWithImpl(
      _$_ReplyCommentBody _value, $Res Function(_$_ReplyCommentBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_ReplyCommentBody(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplyCommentBody implements _ReplyCommentBody {
  const _$_ReplyCommentBody({required this.content});

  factory _$_ReplyCommentBody.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyCommentBodyFromJson(json);

  @override
  final String content;

  @override
  String toString() {
    return 'ReplyCommentBody(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplyCommentBody &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplyCommentBodyCopyWith<_$_ReplyCommentBody> get copyWith =>
      __$$_ReplyCommentBodyCopyWithImpl<_$_ReplyCommentBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyCommentBodyToJson(
      this,
    );
  }
}

abstract class _ReplyCommentBody implements ReplyCommentBody {
  const factory _ReplyCommentBody({required final String content}) =
      _$_ReplyCommentBody;

  factory _ReplyCommentBody.fromJson(Map<String, dynamic> json) =
      _$_ReplyCommentBody.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ReplyCommentBodyCopyWith<_$_ReplyCommentBody> get copyWith =>
      throw _privateConstructorUsedError;
}
