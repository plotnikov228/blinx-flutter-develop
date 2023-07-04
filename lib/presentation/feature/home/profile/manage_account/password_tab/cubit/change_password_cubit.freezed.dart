// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordState {
  Password get currentPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get savedSuccessfully => throw _privateConstructorUsedError;
  ResponseError<dynamic>? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call(
      {Password currentPassword,
      Password newPassword,
      Password confirmPassword,
      bool isLoading,
      bool savedSuccessfully,
      ResponseError<dynamic>? error});

  $PasswordCopyWith<$Res> get currentPassword;
  $PasswordCopyWith<$Res> get newPassword;
  $PasswordCopyWith<$Res> get confirmPassword;
  $ResponseErrorCopyWith<dynamic, $Res>? get error;
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? isLoading = null,
    Object? savedSuccessfully = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      savedSuccessfully: null == savedSuccessfully
          ? _value.savedSuccessfully
          : savedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get currentPassword {
    return $PasswordCopyWith<$Res>(_value.currentPassword, (value) {
      return _then(_value.copyWith(currentPassword: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get newPassword {
    return $PasswordCopyWith<$Res>(_value.newPassword, (value) {
      return _then(_value.copyWith(newPassword: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get confirmPassword {
    return $PasswordCopyWith<$Res>(_value.confirmPassword, (value) {
      return _then(_value.copyWith(confirmPassword: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseErrorCopyWith<dynamic, $Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ResponseErrorCopyWith<dynamic, $Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$_ChangePasswordStateCopyWith(_$_ChangePasswordState value,
          $Res Function(_$_ChangePasswordState) then) =
      __$$_ChangePasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Password currentPassword,
      Password newPassword,
      Password confirmPassword,
      bool isLoading,
      bool savedSuccessfully,
      ResponseError<dynamic>? error});

  @override
  $PasswordCopyWith<$Res> get currentPassword;
  @override
  $PasswordCopyWith<$Res> get newPassword;
  @override
  $PasswordCopyWith<$Res> get confirmPassword;
  @override
  $ResponseErrorCopyWith<dynamic, $Res>? get error;
}

/// @nodoc
class __$$_ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$_ChangePasswordState>
    implements _$$_ChangePasswordStateCopyWith<$Res> {
  __$$_ChangePasswordStateCopyWithImpl(_$_ChangePasswordState _value,
      $Res Function(_$_ChangePasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? isLoading = null,
    Object? savedSuccessfully = null,
    Object? error = freezed,
  }) {
    return _then(_$_ChangePasswordState(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      savedSuccessfully: null == savedSuccessfully
          ? _value.savedSuccessfully
          : savedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState extends _ChangePasswordState {
  _$_ChangePasswordState(
      {required this.currentPassword,
      required this.newPassword,
      required this.confirmPassword,
      this.isLoading = false,
      this.savedSuccessfully = false,
      this.error})
      : super._();

  @override
  final Password currentPassword;
  @override
  final Password newPassword;
  @override
  final Password confirmPassword;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool savedSuccessfully;
  @override
  final ResponseError<dynamic>? error;

  @override
  String toString() {
    return 'ChangePasswordState(currentPassword: $currentPassword, newPassword: $newPassword, confirmPassword: $confirmPassword, isLoading: $isLoading, savedSuccessfully: $savedSuccessfully, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordState &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.savedSuccessfully, savedSuccessfully) ||
                other.savedSuccessfully == savedSuccessfully) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPassword, newPassword,
      confirmPassword, isLoading, savedSuccessfully, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      __$$_ChangePasswordStateCopyWithImpl<_$_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState extends ChangePasswordState {
  factory _ChangePasswordState(
      {required final Password currentPassword,
      required final Password newPassword,
      required final Password confirmPassword,
      final bool isLoading,
      final bool savedSuccessfully,
      final ResponseError<dynamic>? error}) = _$_ChangePasswordState;
  _ChangePasswordState._() : super._();

  @override
  Password get currentPassword;
  @override
  Password get newPassword;
  @override
  Password get confirmPassword;
  @override
  bool get isLoading;
  @override
  bool get savedSuccessfully;
  @override
  ResponseError<dynamic>? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
