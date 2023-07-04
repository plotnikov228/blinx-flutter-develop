// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseStatus<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStatusCopyWith<T, $Res> {
  factory $BaseStatusCopyWith(
          BaseStatus<T> value, $Res Function(BaseStatus<T>) then) =
      _$BaseStatusCopyWithImpl<T, $Res, BaseStatus<T>>;
}

/// @nodoc
class _$BaseStatusCopyWithImpl<T, $Res, $Val extends BaseStatus<T>>
    implements $BaseStatusCopyWith<T, $Res> {
  _$BaseStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<T, $Res> {
  factory _$$InitialCopyWith(
          _$Initial<T> value, $Res Function(_$Initial<T>) then) =
      __$$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$Initial<T>>
    implements _$$InitialCopyWith<T, $Res> {
  __$$InitialCopyWithImpl(
      _$Initial<T> _value, $Res Function(_$Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial<T> implements Initial<T> {
  const _$Initial();

  @override
  String toString() {
    return 'BaseStatus<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements BaseStatus<T> {
  const factory Initial() = _$Initial<T>;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T> value, $Res Function(_$Loading<T>) then) =
      __$$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$Loading<T>>
    implements _$$LoadingCopyWith<T, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T> _value, $Res Function(_$Loading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading();

  @override
  String toString() {
    return 'BaseStatus<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements BaseStatus<T> {
  const factory Loading() = _$Loading<T>;
}

/// @nodoc
abstract class _$$LazyLoadingCopyWith<T, $Res> {
  factory _$$LazyLoadingCopyWith(
          _$LazyLoading<T> value, $Res Function(_$LazyLoading<T>) then) =
      __$$LazyLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LazyLoadingCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$LazyLoading<T>>
    implements _$$LazyLoadingCopyWith<T, $Res> {
  __$$LazyLoadingCopyWithImpl(
      _$LazyLoading<T> _value, $Res Function(_$LazyLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LazyLoading<T> implements LazyLoading<T> {
  const _$LazyLoading();

  @override
  String toString() {
    return 'BaseStatus<$T>.lazyLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LazyLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return lazyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return lazyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (lazyLoading != null) {
      return lazyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return lazyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return lazyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (lazyLoading != null) {
      return lazyLoading(this);
    }
    return orElse();
  }
}

abstract class LazyLoading<T> implements BaseStatus<T> {
  const factory LazyLoading() = _$LazyLoading<T>;
}

/// @nodoc
abstract class _$$SuccessCopyWith<T, $Res> {
  factory _$$SuccessCopyWith(
          _$Success<T> value, $Res Function(_$Success<T>) then) =
      __$$SuccessCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SuccessCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$Success<T>>
    implements _$$SuccessCopyWith<T, $Res> {
  __$$SuccessCopyWithImpl(
      _$Success<T> _value, $Res Function(_$Success<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Success<T> implements Success<T> {
  const _$Success();

  @override
  String toString() {
    return 'BaseStatus<$T>.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Success<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements BaseStatus<T> {
  const factory Success() = _$Success<T>;
}

/// @nodoc
abstract class _$$ValidCopyWith<T, $Res> {
  factory _$$ValidCopyWith(_$Valid<T> value, $Res Function(_$Valid<T>) then) =
      __$$ValidCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ValidCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$Valid<T>>
    implements _$$ValidCopyWith<T, $Res> {
  __$$ValidCopyWithImpl(_$Valid<T> _value, $Res Function(_$Valid<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Valid<T> implements Valid<T> {
  const _$Valid();

  @override
  String toString() {
    return 'BaseStatus<$T>.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Valid<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class Valid<T> implements BaseStatus<T> {
  const factory Valid() = _$Valid<T>;
}

/// @nodoc
abstract class _$$InvalidCopyWith<T, $Res> {
  factory _$$InvalidCopyWith(
          _$Invalid<T> value, $Res Function(_$Invalid<T>) then) =
      __$$InvalidCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InvalidCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$Invalid<T>>
    implements _$$InvalidCopyWith<T, $Res> {
  __$$InvalidCopyWithImpl(
      _$Invalid<T> _value, $Res Function(_$Invalid<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Invalid<T> implements Invalid<T> {
  const _$Invalid();

  @override
  String toString() {
    return 'BaseStatus<$T>.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Invalid<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class Invalid<T> implements BaseStatus<T> {
  const factory Invalid() = _$Invalid<T>;
}

/// @nodoc
abstract class _$$FailureCopyWith<T, $Res> {
  factory _$$FailureCopyWith(
          _$Failure<T> value, $Res Function(_$Failure<T>) then) =
      __$$FailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ResponseError<dynamic> error});

  $ResponseErrorCopyWith<dynamic, $Res> get error;
}

/// @nodoc
class __$$FailureCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$Failure<T>>
    implements _$$FailureCopyWith<T, $Res> {
  __$$FailureCopyWithImpl(
      _$Failure<T> _value, $Res Function(_$Failure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Failure<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseErrorCopyWith<dynamic, $Res> get error {
    return $ResponseErrorCopyWith<dynamic, $Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$Failure<T> implements Failure<T> {
  const _$Failure(this.error);

  @override
  final ResponseError<dynamic> error;

  @override
  String toString() {
    return 'BaseStatus<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCopyWith<T, _$Failure<T>> get copyWith =>
      __$$FailureCopyWithImpl<T, _$Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements BaseStatus<T> {
  const factory Failure(final ResponseError<dynamic> error) = _$Failure<T>;

  ResponseError<dynamic> get error;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<T, _$Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
