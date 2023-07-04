// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MomentsState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  StorytellerMoments? get selectedMoment => throw _privateConstructorUsedError;
  Map<String, Moment> get moments => throw _privateConstructorUsedError;
  List<StorytellerMoments> get storytellers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MomentsStateCopyWith<MomentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MomentsStateCopyWith<$Res> {
  factory $MomentsStateCopyWith(
          MomentsState value, $Res Function(MomentsState) then) =
      _$MomentsStateCopyWithImpl<$Res, MomentsState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      StorytellerMoments? selectedMoment,
      Map<String, Moment> moments,
      List<StorytellerMoments> storytellers});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $StorytellerMomentsCopyWith<$Res>? get selectedMoment;
}

/// @nodoc
class _$MomentsStateCopyWithImpl<$Res, $Val extends MomentsState>
    implements $MomentsStateCopyWith<$Res> {
  _$MomentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedMoment = freezed,
    Object? moments = null,
    Object? storytellers = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      selectedMoment: freezed == selectedMoment
          ? _value.selectedMoment
          : selectedMoment // ignore: cast_nullable_to_non_nullable
              as StorytellerMoments?,
      moments: null == moments
          ? _value.moments
          : moments // ignore: cast_nullable_to_non_nullable
              as Map<String, Moment>,
      storytellers: null == storytellers
          ? _value.storytellers
          : storytellers // ignore: cast_nullable_to_non_nullable
              as List<StorytellerMoments>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StorytellerMomentsCopyWith<$Res>? get selectedMoment {
    if (_value.selectedMoment == null) {
      return null;
    }

    return $StorytellerMomentsCopyWith<$Res>(_value.selectedMoment!, (value) {
      return _then(_value.copyWith(selectedMoment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MomentsStateCopyWith<$Res>
    implements $MomentsStateCopyWith<$Res> {
  factory _$$_MomentsStateCopyWith(
          _$_MomentsState value, $Res Function(_$_MomentsState) then) =
      __$$_MomentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      StorytellerMoments? selectedMoment,
      Map<String, Moment> moments,
      List<StorytellerMoments> storytellers});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $StorytellerMomentsCopyWith<$Res>? get selectedMoment;
}

/// @nodoc
class __$$_MomentsStateCopyWithImpl<$Res>
    extends _$MomentsStateCopyWithImpl<$Res, _$_MomentsState>
    implements _$$_MomentsStateCopyWith<$Res> {
  __$$_MomentsStateCopyWithImpl(
      _$_MomentsState _value, $Res Function(_$_MomentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedMoment = freezed,
    Object? moments = null,
    Object? storytellers = null,
  }) {
    return _then(_$_MomentsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      selectedMoment: freezed == selectedMoment
          ? _value.selectedMoment
          : selectedMoment // ignore: cast_nullable_to_non_nullable
              as StorytellerMoments?,
      moments: null == moments
          ? _value._moments
          : moments // ignore: cast_nullable_to_non_nullable
              as Map<String, Moment>,
      storytellers: null == storytellers
          ? _value._storytellers
          : storytellers // ignore: cast_nullable_to_non_nullable
              as List<StorytellerMoments>,
    ));
  }
}

/// @nodoc

class _$_MomentsState extends _MomentsState {
  _$_MomentsState(
      {this.status = const BaseStatus.initial(),
      this.selectedMoment,
      final Map<String, Moment> moments = const {},
      final List<StorytellerMoments> storytellers = const []})
      : _moments = moments,
        _storytellers = storytellers,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  final StorytellerMoments? selectedMoment;
  final Map<String, Moment> _moments;
  @override
  @JsonKey()
  Map<String, Moment> get moments {
    if (_moments is EqualUnmodifiableMapView) return _moments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_moments);
  }

  final List<StorytellerMoments> _storytellers;
  @override
  @JsonKey()
  List<StorytellerMoments> get storytellers {
    if (_storytellers is EqualUnmodifiableListView) return _storytellers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storytellers);
  }

  @override
  String toString() {
    return 'MomentsState(status: $status, selectedMoment: $selectedMoment, moments: $moments, storytellers: $storytellers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MomentsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedMoment, selectedMoment) ||
                other.selectedMoment == selectedMoment) &&
            const DeepCollectionEquality().equals(other._moments, _moments) &&
            const DeepCollectionEquality()
                .equals(other._storytellers, _storytellers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      selectedMoment,
      const DeepCollectionEquality().hash(_moments),
      const DeepCollectionEquality().hash(_storytellers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MomentsStateCopyWith<_$_MomentsState> get copyWith =>
      __$$_MomentsStateCopyWithImpl<_$_MomentsState>(this, _$identity);
}

abstract class _MomentsState extends MomentsState {
  factory _MomentsState(
      {final BaseStatus<dynamic> status,
      final StorytellerMoments? selectedMoment,
      final Map<String, Moment> moments,
      final List<StorytellerMoments> storytellers}) = _$_MomentsState;
  _MomentsState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  StorytellerMoments? get selectedMoment;
  @override
  Map<String, Moment> get moments;
  @override
  List<StorytellerMoments> get storytellers;
  @override
  @JsonKey(ignore: true)
  _$$_MomentsStateCopyWith<_$_MomentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
