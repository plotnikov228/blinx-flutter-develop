// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Email _$EmailFromJson(Map<String, dynamic> json) {
  return _Email.fromJson(json);
}

/// @nodoc
mixin _$Email {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailCopyWith<Email> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailCopyWith<$Res> {
  factory $EmailCopyWith(Email value, $Res Function(Email) then) =
      _$EmailCopyWithImpl<$Res, Email>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$EmailCopyWithImpl<$Res, $Val extends Email>
    implements $EmailCopyWith<$Res> {
  _$EmailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailCopyWith<$Res> implements $EmailCopyWith<$Res> {
  factory _$$_EmailCopyWith(_$_Email value, $Res Function(_$_Email) then) =
      __$$_EmailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_EmailCopyWithImpl<$Res> extends _$EmailCopyWithImpl<$Res, _$_Email>
    implements _$$_EmailCopyWith<$Res> {
  __$$_EmailCopyWithImpl(_$_Email _value, $Res Function(_$_Email) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_Email(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Email extends _Email {
  const _$_Email(this.value) : super._();

  factory _$_Email.fromJson(Map<String, dynamic> json) =>
      _$$_EmailFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'Email(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Email &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailCopyWith<_$_Email> get copyWith =>
      __$$_EmailCopyWithImpl<_$_Email>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailToJson(
      this,
    );
  }
}

abstract class _Email extends Email {
  const factory _Email(final String value) = _$_Email;
  const _Email._() : super._();

  factory _Email.fromJson(Map<String, dynamic> json) = _$_Email.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_EmailCopyWith<_$_Email> get copyWith =>
      throw _privateConstructorUsedError;
}
