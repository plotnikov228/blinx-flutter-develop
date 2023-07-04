// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_avatars_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetAvatarsState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<Avatar> get avatars => throw _privateConstructorUsedError;
  String get selectedPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAvatarsStateCopyWith<GetAvatarsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAvatarsStateCopyWith<$Res> {
  factory $GetAvatarsStateCopyWith(
          GetAvatarsState value, $Res Function(GetAvatarsState) then) =
      _$GetAvatarsStateCopyWithImpl<$Res, GetAvatarsState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status, List<Avatar> avatars, String selectedPath});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$GetAvatarsStateCopyWithImpl<$Res, $Val extends GetAvatarsState>
    implements $GetAvatarsStateCopyWith<$Res> {
  _$GetAvatarsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? avatars = null,
    Object? selectedPath = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      avatars: null == avatars
          ? _value.avatars
          : avatars // ignore: cast_nullable_to_non_nullable
              as List<Avatar>,
      selectedPath: null == selectedPath
          ? _value.selectedPath
          : selectedPath // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_GetAvatarsStateCopyWith<$Res>
    implements $GetAvatarsStateCopyWith<$Res> {
  factory _$$_GetAvatarsStateCopyWith(
          _$_GetAvatarsState value, $Res Function(_$_GetAvatarsState) then) =
      __$$_GetAvatarsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status, List<Avatar> avatars, String selectedPath});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_GetAvatarsStateCopyWithImpl<$Res>
    extends _$GetAvatarsStateCopyWithImpl<$Res, _$_GetAvatarsState>
    implements _$$_GetAvatarsStateCopyWith<$Res> {
  __$$_GetAvatarsStateCopyWithImpl(
      _$_GetAvatarsState _value, $Res Function(_$_GetAvatarsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? avatars = null,
    Object? selectedPath = null,
  }) {
    return _then(_$_GetAvatarsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      avatars: null == avatars
          ? _value._avatars
          : avatars // ignore: cast_nullable_to_non_nullable
              as List<Avatar>,
      selectedPath: null == selectedPath
          ? _value.selectedPath
          : selectedPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAvatarsState extends _GetAvatarsState {
  _$_GetAvatarsState(
      {this.status = const BaseStatus.initial(),
      final List<Avatar> avatars = const [],
      this.selectedPath = ''})
      : _avatars = avatars,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<Avatar> _avatars;
  @override
  @JsonKey()
  List<Avatar> get avatars {
    if (_avatars is EqualUnmodifiableListView) return _avatars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatars);
  }

  @override
  @JsonKey()
  final String selectedPath;

  @override
  String toString() {
    return 'GetAvatarsState(status: $status, avatars: $avatars, selectedPath: $selectedPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAvatarsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._avatars, _avatars) &&
            (identical(other.selectedPath, selectedPath) ||
                other.selectedPath == selectedPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_avatars), selectedPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAvatarsStateCopyWith<_$_GetAvatarsState> get copyWith =>
      __$$_GetAvatarsStateCopyWithImpl<_$_GetAvatarsState>(this, _$identity);
}

abstract class _GetAvatarsState extends GetAvatarsState {
  factory _GetAvatarsState(
      {final BaseStatus<dynamic> status,
      final List<Avatar> avatars,
      final String selectedPath}) = _$_GetAvatarsState;
  _GetAvatarsState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  List<Avatar> get avatars;
  @override
  String get selectedPath;
  @override
  @JsonKey(ignore: true)
  _$$_GetAvatarsStateCopyWith<_$_GetAvatarsState> get copyWith =>
      throw _privateConstructorUsedError;
}
