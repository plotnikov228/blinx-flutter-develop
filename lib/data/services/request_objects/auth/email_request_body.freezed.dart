// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailRequestBody _$EmailRequestBodyFromJson(Map<String, dynamic> json) {
  return _EmailRequestBody.fromJson(json);
}

/// @nodoc
mixin _$EmailRequestBody {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailRequestBodyCopyWith<EmailRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailRequestBodyCopyWith<$Res> {
  factory $EmailRequestBodyCopyWith(
          EmailRequestBody value, $Res Function(EmailRequestBody) then) =
      _$EmailRequestBodyCopyWithImpl<$Res, EmailRequestBody>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailRequestBodyCopyWithImpl<$Res, $Val extends EmailRequestBody>
    implements $EmailRequestBodyCopyWith<$Res> {
  _$EmailRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailRequestBodyCopyWith<$Res>
    implements $EmailRequestBodyCopyWith<$Res> {
  factory _$$_EmailRequestBodyCopyWith(
          _$_EmailRequestBody value, $Res Function(_$_EmailRequestBody) then) =
      __$$_EmailRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailRequestBodyCopyWithImpl<$Res>
    extends _$EmailRequestBodyCopyWithImpl<$Res, _$_EmailRequestBody>
    implements _$$_EmailRequestBodyCopyWith<$Res> {
  __$$_EmailRequestBodyCopyWithImpl(
      _$_EmailRequestBody _value, $Res Function(_$_EmailRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailRequestBody(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailRequestBody implements _EmailRequestBody {
  _$_EmailRequestBody({required this.email});

  factory _$_EmailRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_EmailRequestBodyFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailRequestBody(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailRequestBody &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailRequestBodyCopyWith<_$_EmailRequestBody> get copyWith =>
      __$$_EmailRequestBodyCopyWithImpl<_$_EmailRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailRequestBodyToJson(
      this,
    );
  }
}

abstract class _EmailRequestBody implements EmailRequestBody {
  factory _EmailRequestBody({required final String email}) =
      _$_EmailRequestBody;

  factory _EmailRequestBody.fromJson(Map<String, dynamic> json) =
      _$_EmailRequestBody.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_EmailRequestBodyCopyWith<_$_EmailRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
