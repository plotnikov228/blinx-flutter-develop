// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalDetailsState {
  User get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get savedSuccessfully => throw _privateConstructorUsedError;
  bool get showDeleteAccountDialog => throw _privateConstructorUsedError;
  bool get deletedSuccessfully => throw _privateConstructorUsedError;
  ResponseError<dynamic>? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalDetailsStateCopyWith<PersonalDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsStateCopyWith<$Res> {
  factory $PersonalDetailsStateCopyWith(PersonalDetailsState value,
          $Res Function(PersonalDetailsState) then) =
      _$PersonalDetailsStateCopyWithImpl<$Res, PersonalDetailsState>;
  @useResult
  $Res call(
      {User user,
      bool isLoading,
      bool savedSuccessfully,
      bool showDeleteAccountDialog,
      bool deletedSuccessfully,
      ResponseError<dynamic>? error});

  $UserCopyWith<$Res> get user;
  $ResponseErrorCopyWith<dynamic, $Res>? get error;
}

/// @nodoc
class _$PersonalDetailsStateCopyWithImpl<$Res,
        $Val extends PersonalDetailsState>
    implements $PersonalDetailsStateCopyWith<$Res> {
  _$PersonalDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isLoading = null,
    Object? savedSuccessfully = null,
    Object? showDeleteAccountDialog = null,
    Object? deletedSuccessfully = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      savedSuccessfully: null == savedSuccessfully
          ? _value.savedSuccessfully
          : savedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      showDeleteAccountDialog: null == showDeleteAccountDialog
          ? _value.showDeleteAccountDialog
          : showDeleteAccountDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedSuccessfully: null == deletedSuccessfully
          ? _value.deletedSuccessfully
          : deletedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
abstract class _$$_PersonalDetailsStateCopyWith<$Res>
    implements $PersonalDetailsStateCopyWith<$Res> {
  factory _$$_PersonalDetailsStateCopyWith(_$_PersonalDetailsState value,
          $Res Function(_$_PersonalDetailsState) then) =
      __$$_PersonalDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      bool isLoading,
      bool savedSuccessfully,
      bool showDeleteAccountDialog,
      bool deletedSuccessfully,
      ResponseError<dynamic>? error});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $ResponseErrorCopyWith<dynamic, $Res>? get error;
}

/// @nodoc
class __$$_PersonalDetailsStateCopyWithImpl<$Res>
    extends _$PersonalDetailsStateCopyWithImpl<$Res, _$_PersonalDetailsState>
    implements _$$_PersonalDetailsStateCopyWith<$Res> {
  __$$_PersonalDetailsStateCopyWithImpl(_$_PersonalDetailsState _value,
      $Res Function(_$_PersonalDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isLoading = null,
    Object? savedSuccessfully = null,
    Object? showDeleteAccountDialog = null,
    Object? deletedSuccessfully = null,
    Object? error = freezed,
  }) {
    return _then(_$_PersonalDetailsState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      savedSuccessfully: null == savedSuccessfully
          ? _value.savedSuccessfully
          : savedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      showDeleteAccountDialog: null == showDeleteAccountDialog
          ? _value.showDeleteAccountDialog
          : showDeleteAccountDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedSuccessfully: null == deletedSuccessfully
          ? _value.deletedSuccessfully
          : deletedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_PersonalDetailsState extends _PersonalDetailsState {
  _$_PersonalDetailsState(
      {required this.user,
      this.isLoading = false,
      this.savedSuccessfully = false,
      this.showDeleteAccountDialog = false,
      this.deletedSuccessfully = false,
      this.error})
      : super._();

  @override
  final User user;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool savedSuccessfully;
  @override
  @JsonKey()
  final bool showDeleteAccountDialog;
  @override
  @JsonKey()
  final bool deletedSuccessfully;
  @override
  final ResponseError<dynamic>? error;

  @override
  String toString() {
    return 'PersonalDetailsState(user: $user, isLoading: $isLoading, savedSuccessfully: $savedSuccessfully, showDeleteAccountDialog: $showDeleteAccountDialog, deletedSuccessfully: $deletedSuccessfully, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalDetailsState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.savedSuccessfully, savedSuccessfully) ||
                other.savedSuccessfully == savedSuccessfully) &&
            (identical(
                    other.showDeleteAccountDialog, showDeleteAccountDialog) ||
                other.showDeleteAccountDialog == showDeleteAccountDialog) &&
            (identical(other.deletedSuccessfully, deletedSuccessfully) ||
                other.deletedSuccessfully == deletedSuccessfully) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading,
      savedSuccessfully, showDeleteAccountDialog, deletedSuccessfully, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalDetailsStateCopyWith<_$_PersonalDetailsState> get copyWith =>
      __$$_PersonalDetailsStateCopyWithImpl<_$_PersonalDetailsState>(
          this, _$identity);
}

abstract class _PersonalDetailsState extends PersonalDetailsState {
  factory _PersonalDetailsState(
      {required final User user,
      final bool isLoading,
      final bool savedSuccessfully,
      final bool showDeleteAccountDialog,
      final bool deletedSuccessfully,
      final ResponseError<dynamic>? error}) = _$_PersonalDetailsState;
  _PersonalDetailsState._() : super._();

  @override
  User get user;
  @override
  bool get isLoading;
  @override
  bool get savedSuccessfully;
  @override
  bool get showDeleteAccountDialog;
  @override
  bool get deletedSuccessfully;
  @override
  ResponseError<dynamic>? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDetailsStateCopyWith<_$_PersonalDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
