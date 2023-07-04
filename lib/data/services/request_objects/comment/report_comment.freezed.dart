// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportComment _$ReportCommentFromJson(Map<String, dynamic> json) {
  return _ReportComment.fromJson(json);
}

/// @nodoc
mixin _$ReportComment {
  String get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCommentCopyWith<ReportComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCommentCopyWith<$Res> {
  factory $ReportCommentCopyWith(
          ReportComment value, $Res Function(ReportComment) then) =
      _$ReportCommentCopyWithImpl<$Res, ReportComment>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$ReportCommentCopyWithImpl<$Res, $Val extends ReportComment>
    implements $ReportCommentCopyWith<$Res> {
  _$ReportCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportCommentCopyWith<$Res>
    implements $ReportCommentCopyWith<$Res> {
  factory _$$_ReportCommentCopyWith(
          _$_ReportComment value, $Res Function(_$_ReportComment) then) =
      __$$_ReportCommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$_ReportCommentCopyWithImpl<$Res>
    extends _$ReportCommentCopyWithImpl<$Res, _$_ReportComment>
    implements _$$_ReportCommentCopyWith<$Res> {
  __$$_ReportCommentCopyWithImpl(
      _$_ReportComment _value, $Res Function(_$_ReportComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$_ReportComment(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportComment implements _ReportComment {
  const _$_ReportComment({required this.reason});

  factory _$_ReportComment.fromJson(Map<String, dynamic> json) =>
      _$$_ReportCommentFromJson(json);

  @override
  final String reason;

  @override
  String toString() {
    return 'ReportComment(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportComment &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportCommentCopyWith<_$_ReportComment> get copyWith =>
      __$$_ReportCommentCopyWithImpl<_$_ReportComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportCommentToJson(
      this,
    );
  }
}

abstract class _ReportComment implements ReportComment {
  const factory _ReportComment({required final String reason}) =
      _$_ReportComment;

  factory _ReportComment.fromJson(Map<String, dynamic> json) =
      _$_ReportComment.fromJson;

  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_ReportCommentCopyWith<_$_ReportComment> get copyWith =>
      throw _privateConstructorUsedError;
}
