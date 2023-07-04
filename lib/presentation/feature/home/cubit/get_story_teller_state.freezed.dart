// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_story_teller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetStoryTellerState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<StorytellerWrapper> get storytellersWrappers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetStoryTellerStateCopyWith<GetStoryTellerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoryTellerStateCopyWith<$Res> {
  factory $GetStoryTellerStateCopyWith(
          GetStoryTellerState value, $Res Function(GetStoryTellerState) then) =
      _$GetStoryTellerStateCopyWithImpl<$Res, GetStoryTellerState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<StorytellerWrapper> storytellersWrappers});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$GetStoryTellerStateCopyWithImpl<$Res, $Val extends GetStoryTellerState>
    implements $GetStoryTellerStateCopyWith<$Res> {
  _$GetStoryTellerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? storytellersWrappers = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      storytellersWrappers: null == storytellersWrappers
          ? _value.storytellersWrappers
          : storytellersWrappers // ignore: cast_nullable_to_non_nullable
              as List<StorytellerWrapper>,
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
abstract class _$$_GetStoryTellerStateCopyWith<$Res>
    implements $GetStoryTellerStateCopyWith<$Res> {
  factory _$$_GetStoryTellerStateCopyWith(_$_GetStoryTellerState value,
          $Res Function(_$_GetStoryTellerState) then) =
      __$$_GetStoryTellerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<StorytellerWrapper> storytellersWrappers});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_GetStoryTellerStateCopyWithImpl<$Res>
    extends _$GetStoryTellerStateCopyWithImpl<$Res, _$_GetStoryTellerState>
    implements _$$_GetStoryTellerStateCopyWith<$Res> {
  __$$_GetStoryTellerStateCopyWithImpl(_$_GetStoryTellerState _value,
      $Res Function(_$_GetStoryTellerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? storytellersWrappers = null,
  }) {
    return _then(_$_GetStoryTellerState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      storytellersWrappers: null == storytellersWrappers
          ? _value._storytellersWrappers
          : storytellersWrappers // ignore: cast_nullable_to_non_nullable
              as List<StorytellerWrapper>,
    ));
  }
}

/// @nodoc

class _$_GetStoryTellerState extends _GetStoryTellerState {
  _$_GetStoryTellerState(
      {this.status = const BaseStatus.initial(),
      final List<StorytellerWrapper> storytellersWrappers = const []})
      : _storytellersWrappers = storytellersWrappers,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<StorytellerWrapper> _storytellersWrappers;
  @override
  @JsonKey()
  List<StorytellerWrapper> get storytellersWrappers {
    if (_storytellersWrappers is EqualUnmodifiableListView)
      return _storytellersWrappers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storytellersWrappers);
  }

  @override
  String toString() {
    return 'GetStoryTellerState(status: $status, storytellersWrappers: $storytellersWrappers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetStoryTellerState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._storytellersWrappers, _storytellersWrappers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_storytellersWrappers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetStoryTellerStateCopyWith<_$_GetStoryTellerState> get copyWith =>
      __$$_GetStoryTellerStateCopyWithImpl<_$_GetStoryTellerState>(
          this, _$identity);
}

abstract class _GetStoryTellerState extends GetStoryTellerState {
  factory _GetStoryTellerState(
          {final BaseStatus<dynamic> status,
          final List<StorytellerWrapper> storytellersWrappers}) =
      _$_GetStoryTellerState;
  _GetStoryTellerState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  List<StorytellerWrapper> get storytellersWrappers;
  @override
  @JsonKey(ignore: true)
  _$$_GetStoryTellerStateCopyWith<_$_GetStoryTellerState> get copyWith =>
      throw _privateConstructorUsedError;
}
