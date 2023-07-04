// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storyteller_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorytellerWrapper _$StorytellerWrapperFromJson(Map<String, dynamic> json) {
  return _SStorytellerWrapper.fromJson(json);
}

/// @nodoc
mixin _$StorytellerWrapper {
  Storyteller get storyteller => throw _privateConstructorUsedError;
  set storyteller(Storyteller value) => throw _privateConstructorUsedError;
  int get articlesCount => throw _privateConstructorUsedError;
  set articlesCount(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorytellerWrapperCopyWith<StorytellerWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorytellerWrapperCopyWith<$Res> {
  factory $StorytellerWrapperCopyWith(
          StorytellerWrapper value, $Res Function(StorytellerWrapper) then) =
      _$StorytellerWrapperCopyWithImpl<$Res, StorytellerWrapper>;
  @useResult
  $Res call({Storyteller storyteller, int articlesCount});

  $StorytellerCopyWith<$Res> get storyteller;
}

/// @nodoc
class _$StorytellerWrapperCopyWithImpl<$Res, $Val extends StorytellerWrapper>
    implements $StorytellerWrapperCopyWith<$Res> {
  _$StorytellerWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyteller = null,
    Object? articlesCount = null,
  }) {
    return _then(_value.copyWith(
      storyteller: null == storyteller
          ? _value.storyteller
          : storyteller // ignore: cast_nullable_to_non_nullable
              as Storyteller,
      articlesCount: null == articlesCount
          ? _value.articlesCount
          : articlesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StorytellerCopyWith<$Res> get storyteller {
    return $StorytellerCopyWith<$Res>(_value.storyteller, (value) {
      return _then(_value.copyWith(storyteller: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SStorytellerWrapperCopyWith<$Res>
    implements $StorytellerWrapperCopyWith<$Res> {
  factory _$$_SStorytellerWrapperCopyWith(_$_SStorytellerWrapper value,
          $Res Function(_$_SStorytellerWrapper) then) =
      __$$_SStorytellerWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Storyteller storyteller, int articlesCount});

  @override
  $StorytellerCopyWith<$Res> get storyteller;
}

/// @nodoc
class __$$_SStorytellerWrapperCopyWithImpl<$Res>
    extends _$StorytellerWrapperCopyWithImpl<$Res, _$_SStorytellerWrapper>
    implements _$$_SStorytellerWrapperCopyWith<$Res> {
  __$$_SStorytellerWrapperCopyWithImpl(_$_SStorytellerWrapper _value,
      $Res Function(_$_SStorytellerWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyteller = null,
    Object? articlesCount = null,
  }) {
    return _then(_$_SStorytellerWrapper(
      storyteller: null == storyteller
          ? _value.storyteller
          : storyteller // ignore: cast_nullable_to_non_nullable
              as Storyteller,
      articlesCount: null == articlesCount
          ? _value.articlesCount
          : articlesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SStorytellerWrapper extends _SStorytellerWrapper {
  _$_SStorytellerWrapper(
      {required this.storyteller, required this.articlesCount})
      : super._();

  factory _$_SStorytellerWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_SStorytellerWrapperFromJson(json);

  @override
  Storyteller storyteller;
  @override
  int articlesCount;

  @override
  String toString() {
    return 'StorytellerWrapper(storyteller: $storyteller, articlesCount: $articlesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SStorytellerWrapper &&
            (identical(other.storyteller, storyteller) ||
                other.storyteller == storyteller) &&
            (identical(other.articlesCount, articlesCount) ||
                other.articlesCount == articlesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, storyteller, articlesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SStorytellerWrapperCopyWith<_$_SStorytellerWrapper> get copyWith =>
      __$$_SStorytellerWrapperCopyWithImpl<_$_SStorytellerWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SStorytellerWrapperToJson(
      this,
    );
  }
}

abstract class _SStorytellerWrapper extends StorytellerWrapper {
  factory _SStorytellerWrapper(
      {required Storyteller storyteller,
      required int articlesCount}) = _$_SStorytellerWrapper;
  _SStorytellerWrapper._() : super._();

  factory _SStorytellerWrapper.fromJson(Map<String, dynamic> json) =
      _$_SStorytellerWrapper.fromJson;

  @override
  Storyteller get storyteller;
  set storyteller(Storyteller value);
  @override
  int get articlesCount;
  set articlesCount(int value);
  @override
  @JsonKey(ignore: true)
  _$$_SStorytellerWrapperCopyWith<_$_SStorytellerWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
