// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_article_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikeArticleState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  Map<String, bool> get likedItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikeArticleStateCopyWith<LikeArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeArticleStateCopyWith<$Res> {
  factory $LikeArticleStateCopyWith(
          LikeArticleState value, $Res Function(LikeArticleState) then) =
      _$LikeArticleStateCopyWithImpl<$Res, LikeArticleState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, Map<String, bool> likedItems});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$LikeArticleStateCopyWithImpl<$Res, $Val extends LikeArticleState>
    implements $LikeArticleStateCopyWith<$Res> {
  _$LikeArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? likedItems = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      likedItems: null == likedItems
          ? _value.likedItems
          : likedItems // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
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
abstract class _$$_LikeArticleStateCopyWith<$Res>
    implements $LikeArticleStateCopyWith<$Res> {
  factory _$$_LikeArticleStateCopyWith(
          _$_LikeArticleState value, $Res Function(_$_LikeArticleState) then) =
      __$$_LikeArticleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, Map<String, bool> likedItems});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_LikeArticleStateCopyWithImpl<$Res>
    extends _$LikeArticleStateCopyWithImpl<$Res, _$_LikeArticleState>
    implements _$$_LikeArticleStateCopyWith<$Res> {
  __$$_LikeArticleStateCopyWithImpl(
      _$_LikeArticleState _value, $Res Function(_$_LikeArticleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? likedItems = null,
  }) {
    return _then(_$_LikeArticleState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      likedItems: null == likedItems
          ? _value._likedItems
          : likedItems // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_LikeArticleState extends _LikeArticleState {
  const _$_LikeArticleState(
      {this.status = const BaseStatus.initial(),
      final Map<String, bool> likedItems = const {}})
      : _likedItems = likedItems,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final Map<String, bool> _likedItems;
  @override
  @JsonKey()
  Map<String, bool> get likedItems {
    if (_likedItems is EqualUnmodifiableMapView) return _likedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_likedItems);
  }

  @override
  String toString() {
    return 'LikeArticleState(status: $status, likedItems: $likedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikeArticleState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._likedItems, _likedItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_likedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikeArticleStateCopyWith<_$_LikeArticleState> get copyWith =>
      __$$_LikeArticleStateCopyWithImpl<_$_LikeArticleState>(this, _$identity);
}

abstract class _LikeArticleState extends LikeArticleState {
  const factory _LikeArticleState(
      {final BaseStatus<dynamic> status,
      final Map<String, bool> likedItems}) = _$_LikeArticleState;
  const _LikeArticleState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  Map<String, bool> get likedItems;
  @override
  @JsonKey(ignore: true)
  _$$_LikeArticleStateCopyWith<_$_LikeArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}
