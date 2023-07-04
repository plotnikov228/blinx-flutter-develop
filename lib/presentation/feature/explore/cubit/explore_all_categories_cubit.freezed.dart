// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_all_categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExploreAllCategoriesState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<Category> get categoriesList => throw _privateConstructorUsedError;
  int get selectedCategoryIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExploreAllCategoriesStateCopyWith<ExploreAllCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreAllCategoriesStateCopyWith<$Res> {
  factory $ExploreAllCategoriesStateCopyWith(ExploreAllCategoriesState value,
          $Res Function(ExploreAllCategoriesState) then) =
      _$ExploreAllCategoriesStateCopyWithImpl<$Res, ExploreAllCategoriesState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<Category> categoriesList,
      int selectedCategoryIndex});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$ExploreAllCategoriesStateCopyWithImpl<$Res,
        $Val extends ExploreAllCategoriesState>
    implements $ExploreAllCategoriesStateCopyWith<$Res> {
  _$ExploreAllCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categoriesList = null,
    Object? selectedCategoryIndex = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      categoriesList: null == categoriesList
          ? _value.categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_ExploreAllCategoriesStateCopyWith<$Res>
    implements $ExploreAllCategoriesStateCopyWith<$Res> {
  factory _$$_ExploreAllCategoriesStateCopyWith(
          _$_ExploreAllCategoriesState value,
          $Res Function(_$_ExploreAllCategoriesState) then) =
      __$$_ExploreAllCategoriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<Category> categoriesList,
      int selectedCategoryIndex});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_ExploreAllCategoriesStateCopyWithImpl<$Res>
    extends _$ExploreAllCategoriesStateCopyWithImpl<$Res,
        _$_ExploreAllCategoriesState>
    implements _$$_ExploreAllCategoriesStateCopyWith<$Res> {
  __$$_ExploreAllCategoriesStateCopyWithImpl(
      _$_ExploreAllCategoriesState _value,
      $Res Function(_$_ExploreAllCategoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categoriesList = null,
    Object? selectedCategoryIndex = null,
  }) {
    return _then(_$_ExploreAllCategoriesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      categoriesList: null == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExploreAllCategoriesState implements _ExploreAllCategoriesState {
  const _$_ExploreAllCategoriesState(
      {this.status = const BaseStatus.initial(),
      final List<Category> categoriesList = const [],
      this.selectedCategoryIndex = -1})
      : _categoriesList = categoriesList;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<Category> _categoriesList;
  @override
  @JsonKey()
  List<Category> get categoriesList {
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesList);
  }

  @override
  @JsonKey()
  final int selectedCategoryIndex;

  @override
  String toString() {
    return 'ExploreAllCategoriesState(status: $status, categoriesList: $categoriesList, selectedCategoryIndex: $selectedCategoryIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExploreAllCategoriesState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_categoriesList),
      selectedCategoryIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExploreAllCategoriesStateCopyWith<_$_ExploreAllCategoriesState>
      get copyWith => __$$_ExploreAllCategoriesStateCopyWithImpl<
          _$_ExploreAllCategoriesState>(this, _$identity);
}

abstract class _ExploreAllCategoriesState implements ExploreAllCategoriesState {
  const factory _ExploreAllCategoriesState(
      {final BaseStatus<dynamic> status,
      final List<Category> categoriesList,
      final int selectedCategoryIndex}) = _$_ExploreAllCategoriesState;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<Category> get categoriesList;
  @override
  int get selectedCategoryIndex;
  @override
  @JsonKey(ignore: true)
  _$$_ExploreAllCategoriesStateCopyWith<_$_ExploreAllCategoriesState>
      get copyWith => throw _privateConstructorUsedError;
}
