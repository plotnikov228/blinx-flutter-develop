// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collections_articles_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionsArticlesState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<Article> get articlesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionsArticlesStateCopyWith<CollectionsArticlesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionsArticlesStateCopyWith<$Res> {
  factory $CollectionsArticlesStateCopyWith(CollectionsArticlesState value,
          $Res Function(CollectionsArticlesState) then) =
      _$CollectionsArticlesStateCopyWithImpl<$Res, CollectionsArticlesState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<Article> articlesList});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$CollectionsArticlesStateCopyWithImpl<$Res,
        $Val extends CollectionsArticlesState>
    implements $CollectionsArticlesStateCopyWith<$Res> {
  _$CollectionsArticlesStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_CollectionsArticlesStateCopyWith<$Res>
    implements $CollectionsArticlesStateCopyWith<$Res> {
  factory _$$_CollectionsArticlesStateCopyWith(
          _$_CollectionsArticlesState value,
          $Res Function(_$_CollectionsArticlesState) then) =
      __$$_CollectionsArticlesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<Article> articlesList});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_CollectionsArticlesStateCopyWithImpl<$Res>
    extends _$CollectionsArticlesStateCopyWithImpl<$Res,
        _$_CollectionsArticlesState>
    implements _$$_CollectionsArticlesStateCopyWith<$Res> {
  __$$_CollectionsArticlesStateCopyWithImpl(_$_CollectionsArticlesState _value,
      $Res Function(_$_CollectionsArticlesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articlesList = null,
  }) {
    return _then(_$_CollectionsArticlesState(
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

class _$_CollectionsArticlesState implements _CollectionsArticlesState {
  const _$_CollectionsArticlesState(
      {this.status = const BaseStatus.initial(),
      final List<Article> articlesList = const []})
      : _articlesList = articlesList;

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
    return 'CollectionsArticlesState(status: $status, articlesList: $articlesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionsArticlesState &&
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
  _$$_CollectionsArticlesStateCopyWith<_$_CollectionsArticlesState>
      get copyWith => __$$_CollectionsArticlesStateCopyWithImpl<
          _$_CollectionsArticlesState>(this, _$identity);
}

abstract class _CollectionsArticlesState implements CollectionsArticlesState {
  const factory _CollectionsArticlesState(
      {final BaseStatus<dynamic> status,
      final List<Article> articlesList}) = _$_CollectionsArticlesState;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<Article> get articlesList;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionsArticlesStateCopyWith<_$_CollectionsArticlesState>
      get copyWith => throw _privateConstructorUsedError;
}
