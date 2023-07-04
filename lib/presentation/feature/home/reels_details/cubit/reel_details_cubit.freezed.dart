// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reel_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReelDetailsState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  Map<String, Article> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReelDetailsStateCopyWith<ReelDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelDetailsStateCopyWith<$Res> {
  factory $ReelDetailsStateCopyWith(
          ReelDetailsState value, $Res Function(ReelDetailsState) then) =
      _$ReelDetailsStateCopyWithImpl<$Res, ReelDetailsState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, Map<String, Article> data});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$ReelDetailsStateCopyWithImpl<$Res, $Val extends ReelDetailsState>
    implements $ReelDetailsStateCopyWith<$Res> {
  _$ReelDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, Article>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReelDetailsStateCopyWith<$Res>
    implements $ReelDetailsStateCopyWith<$Res> {
  factory _$$_ReelDetailsStateCopyWith(
          _$_ReelDetailsState value, $Res Function(_$_ReelDetailsState) then) =
      __$$_ReelDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, Map<String, Article> data});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_ReelDetailsStateCopyWithImpl<$Res>
    extends _$ReelDetailsStateCopyWithImpl<$Res, _$_ReelDetailsState>
    implements _$$_ReelDetailsStateCopyWith<$Res> {
  __$$_ReelDetailsStateCopyWithImpl(
      _$_ReelDetailsState _value, $Res Function(_$_ReelDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$_ReelDetailsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, Article>,
    ));
  }
}

/// @nodoc

class _$_ReelDetailsState extends _ReelDetailsState {
  const _$_ReelDetailsState(
      {this.status = const BaseStatus.initial(),
      final Map<String, Article> data = const {}})
      : _data = data,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final Map<String, Article> _data;
  @override
  @JsonKey()
  Map<String, Article> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'ReelDetailsState(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReelDetailsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReelDetailsStateCopyWith<_$_ReelDetailsState> get copyWith =>
      __$$_ReelDetailsStateCopyWithImpl<_$_ReelDetailsState>(this, _$identity);
}

abstract class _ReelDetailsState extends ReelDetailsState {
  const factory _ReelDetailsState(
      {final BaseStatus<dynamic> status,
      final Map<String, Article> data}) = _$_ReelDetailsState;
  const _ReelDetailsState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  Map<String, Article> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ReelDetailsStateCopyWith<_$_ReelDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
