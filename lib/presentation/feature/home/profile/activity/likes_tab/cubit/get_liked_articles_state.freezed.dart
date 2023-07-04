// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_liked_articles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetLikedArticlesState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<Article> get articlesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetLikedArticlesStateCopyWith<GetLikedArticlesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLikedArticlesStateCopyWith<$Res> {
  factory $GetLikedArticlesStateCopyWith(GetLikedArticlesState value,
          $Res Function(GetLikedArticlesState) then) =
      _$GetLikedArticlesStateCopyWithImpl<$Res, GetLikedArticlesState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<Article> articlesList});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$GetLikedArticlesStateCopyWithImpl<$Res,
        $Val extends GetLikedArticlesState>
    implements $GetLikedArticlesStateCopyWith<$Res> {
  _$GetLikedArticlesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articlesList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      articlesList: null == articlesList
          ? _value.articlesList
          : articlesList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
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
abstract class _$$_GetLikedArticlesStateCopyWith<$Res>
    implements $GetLikedArticlesStateCopyWith<$Res> {
  factory _$$_GetLikedArticlesStateCopyWith(_$_GetLikedArticlesState value,
          $Res Function(_$_GetLikedArticlesState) then) =
      __$$_GetLikedArticlesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<Article> articlesList});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_GetLikedArticlesStateCopyWithImpl<$Res>
    extends _$GetLikedArticlesStateCopyWithImpl<$Res, _$_GetLikedArticlesState>
    implements _$$_GetLikedArticlesStateCopyWith<$Res> {
  __$$_GetLikedArticlesStateCopyWithImpl(_$_GetLikedArticlesState _value,
      $Res Function(_$_GetLikedArticlesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articlesList = null,
  }) {
    return _then(_$_GetLikedArticlesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      articlesList: null == articlesList
          ? _value._articlesList
          : articlesList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_GetLikedArticlesState extends _GetLikedArticlesState {
  _$_GetLikedArticlesState(
      {this.status = const BaseStatus.initial(),
      final List<Article> articlesList = const []})
      : _articlesList = articlesList,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<Article> _articlesList;
  @override
  @JsonKey()
  List<Article> get articlesList {
    if (_articlesList is EqualUnmodifiableListView) return _articlesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articlesList);
  }

  @override
  String toString() {
    return 'GetLikedArticlesState(status: $status, articlesList: $articlesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLikedArticlesState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._articlesList, _articlesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_articlesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLikedArticlesStateCopyWith<_$_GetLikedArticlesState> get copyWith =>
      __$$_GetLikedArticlesStateCopyWithImpl<_$_GetLikedArticlesState>(
          this, _$identity);
}

abstract class _GetLikedArticlesState extends GetLikedArticlesState {
  factory _GetLikedArticlesState(
      {final BaseStatus<dynamic> status,
      final List<Article> articlesList}) = _$_GetLikedArticlesState;
  _GetLikedArticlesState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  List<Article> get articlesList;
  @override
  @JsonKey(ignore: true)
  _$$_GetLikedArticlesStateCopyWith<_$_GetLikedArticlesState> get copyWith =>
      throw _privateConstructorUsedError;
}
