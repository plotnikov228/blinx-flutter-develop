// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InterestsState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<Category> get allCategories => throw _privateConstructorUsedError;
  Map<String, String> get likedCategories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InterestsStateCopyWith<InterestsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestsStateCopyWith<$Res> {
  factory $InterestsStateCopyWith(
          InterestsState value, $Res Function(InterestsState) then) =
      _$InterestsStateCopyWithImpl<$Res, InterestsState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<Category> allCategories,
      Map<String, String> likedCategories});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$InterestsStateCopyWithImpl<$Res, $Val extends InterestsState>
    implements $InterestsStateCopyWith<$Res> {
  _$InterestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? allCategories = null,
    Object? likedCategories = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      allCategories: null == allCategories
          ? _value.allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      likedCategories: null == likedCategories
          ? _value.likedCategories
          : likedCategories // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
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
abstract class _$$_InterestsStateCopyWith<$Res>
    implements $InterestsStateCopyWith<$Res> {
  factory _$$_InterestsStateCopyWith(
          _$_InterestsState value, $Res Function(_$_InterestsState) then) =
      __$$_InterestsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<Category> allCategories,
      Map<String, String> likedCategories});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_InterestsStateCopyWithImpl<$Res>
    extends _$InterestsStateCopyWithImpl<$Res, _$_InterestsState>
    implements _$$_InterestsStateCopyWith<$Res> {
  __$$_InterestsStateCopyWithImpl(
      _$_InterestsState _value, $Res Function(_$_InterestsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? allCategories = null,
    Object? likedCategories = null,
  }) {
    return _then(_$_InterestsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      allCategories: null == allCategories
          ? _value._allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      likedCategories: null == likedCategories
          ? _value._likedCategories
          : likedCategories // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_InterestsState extends _InterestsState {
  const _$_InterestsState(
      {this.status = const BaseStatus.initial(),
      final List<Category> allCategories = const [],
      final Map<String, String> likedCategories = const {}})
      : _allCategories = allCategories,
        _likedCategories = likedCategories,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<Category> _allCategories;
  @override
  @JsonKey()
  List<Category> get allCategories {
    if (_allCategories is EqualUnmodifiableListView) return _allCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCategories);
  }

  final Map<String, String> _likedCategories;
  @override
  @JsonKey()
  Map<String, String> get likedCategories {
    if (_likedCategories is EqualUnmodifiableMapView) return _likedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_likedCategories);
  }

  @override
  String toString() {
    return 'InterestsState(status: $status, allCategories: $allCategories, likedCategories: $likedCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InterestsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._allCategories, _allCategories) &&
            const DeepCollectionEquality()
                .equals(other._likedCategories, _likedCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_allCategories),
      const DeepCollectionEquality().hash(_likedCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestsStateCopyWith<_$_InterestsState> get copyWith =>
      __$$_InterestsStateCopyWithImpl<_$_InterestsState>(this, _$identity);
}

abstract class _InterestsState extends InterestsState {
  const factory _InterestsState(
      {final BaseStatus<dynamic> status,
      final List<Category> allCategories,
      final Map<String, String> likedCategories}) = _$_InterestsState;
  const _InterestsState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  List<Category> get allCategories;
  @override
  Map<String, String> get likedCategories;
  @override
  @JsonKey(ignore: true)
  _$$_InterestsStateCopyWith<_$_InterestsState> get copyWith =>
      throw _privateConstructorUsedError;
}
