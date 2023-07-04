// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_like_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticlLikeState {
  bool get isLiked => throw _privateConstructorUsedError;
  int get totalLikes => throw _privateConstructorUsedError;
  Storyteller? get storytellers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticlLikeStateCopyWith<ArticlLikeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlLikeStateCopyWith<$Res> {
  factory $ArticlLikeStateCopyWith(
          ArticlLikeState value, $Res Function(ArticlLikeState) then) =
      _$ArticlLikeStateCopyWithImpl<$Res, ArticlLikeState>;
  @useResult
  $Res call({bool isLiked, int totalLikes, Storyteller? storytellers});

  $StorytellerCopyWith<$Res>? get storytellers;
}

/// @nodoc
class _$ArticlLikeStateCopyWithImpl<$Res, $Val extends ArticlLikeState>
    implements $ArticlLikeStateCopyWith<$Res> {
  _$ArticlLikeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
    Object? totalLikes = null,
    Object? storytellers = freezed,
  }) {
    return _then(_value.copyWith(
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      storytellers: freezed == storytellers
          ? _value.storytellers
          : storytellers // ignore: cast_nullable_to_non_nullable
              as Storyteller?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StorytellerCopyWith<$Res>? get storytellers {
    if (_value.storytellers == null) {
      return null;
    }

    return $StorytellerCopyWith<$Res>(_value.storytellers!, (value) {
      return _then(_value.copyWith(storytellers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticlLikeStateStateCopyWith<$Res>
    implements $ArticlLikeStateCopyWith<$Res> {
  factory _$$_ArticlLikeStateStateCopyWith(_$_ArticlLikeStateState value,
          $Res Function(_$_ArticlLikeStateState) then) =
      __$$_ArticlLikeStateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLiked, int totalLikes, Storyteller? storytellers});

  @override
  $StorytellerCopyWith<$Res>? get storytellers;
}

/// @nodoc
class __$$_ArticlLikeStateStateCopyWithImpl<$Res>
    extends _$ArticlLikeStateCopyWithImpl<$Res, _$_ArticlLikeStateState>
    implements _$$_ArticlLikeStateStateCopyWith<$Res> {
  __$$_ArticlLikeStateStateCopyWithImpl(_$_ArticlLikeStateState _value,
      $Res Function(_$_ArticlLikeStateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
    Object? totalLikes = null,
    Object? storytellers = freezed,
  }) {
    return _then(_$_ArticlLikeStateState(
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      storytellers: freezed == storytellers
          ? _value.storytellers
          : storytellers // ignore: cast_nullable_to_non_nullable
              as Storyteller?,
    ));
  }
}

/// @nodoc

class _$_ArticlLikeStateState extends _ArticlLikeStateState {
  const _$_ArticlLikeStateState(
      {this.isLiked = false, this.totalLikes = 0, this.storytellers})
      : super._();

  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final int totalLikes;
  @override
  final Storyteller? storytellers;

  @override
  String toString() {
    return 'ArticlLikeState(isLiked: $isLiked, totalLikes: $totalLikes, storytellers: $storytellers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticlLikeStateState &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.storytellers, storytellers) ||
                other.storytellers == storytellers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLiked, totalLikes, storytellers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticlLikeStateStateCopyWith<_$_ArticlLikeStateState> get copyWith =>
      __$$_ArticlLikeStateStateCopyWithImpl<_$_ArticlLikeStateState>(
          this, _$identity);
}

abstract class _ArticlLikeStateState extends ArticlLikeState {
  const factory _ArticlLikeStateState(
      {final bool isLiked,
      final int totalLikes,
      final Storyteller? storytellers}) = _$_ArticlLikeStateState;
  const _ArticlLikeStateState._() : super._();

  @override
  bool get isLiked;
  @override
  int get totalLikes;
  @override
  Storyteller? get storytellers;
  @override
  @JsonKey(ignore: true)
  _$$_ArticlLikeStateStateCopyWith<_$_ArticlLikeStateState> get copyWith =>
      throw _privateConstructorUsedError;
}
