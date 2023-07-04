// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikedCategoriesState {
  List<Category> get likedCategoriesList => throw _privateConstructorUsedError;
  Category? get selectedCategory => throw _privateConstructorUsedError;
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikedCategoriesStateCopyWith<LikedCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedCategoriesStateCopyWith<$Res> {
  factory $LikedCategoriesStateCopyWith(LikedCategoriesState value,
          $Res Function(LikedCategoriesState) then) =
      _$LikedCategoriesStateCopyWithImpl<$Res, LikedCategoriesState>;
  @useResult
  $Res call(
      {List<Category> likedCategoriesList,
      Category? selectedCategory,
      BaseStatus<dynamic> status});

  $CategoryCopyWith<$Res>? get selectedCategory;
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$LikedCategoriesStateCopyWithImpl<$Res,
        $Val extends LikedCategoriesState>
    implements $LikedCategoriesStateCopyWith<$Res> {
  _$LikedCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likedCategoriesList = null,
    Object? selectedCategory = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      likedCategoriesList: null == likedCategoriesList
          ? _value.likedCategoriesList
          : likedCategoriesList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
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
abstract class _$$_LikedCategoriesStateCopyWith<$Res>
    implements $LikedCategoriesStateCopyWith<$Res> {
  factory _$$_LikedCategoriesStateCopyWith(_$_LikedCategoriesState value,
          $Res Function(_$_LikedCategoriesState) then) =
      __$$_LikedCategoriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category> likedCategoriesList,
      Category? selectedCategory,
      BaseStatus<dynamic> status});

  @override
  $CategoryCopyWith<$Res>? get selectedCategory;
  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_LikedCategoriesStateCopyWithImpl<$Res>
    extends _$LikedCategoriesStateCopyWithImpl<$Res, _$_LikedCategoriesState>
    implements _$$_LikedCategoriesStateCopyWith<$Res> {
  __$$_LikedCategoriesStateCopyWithImpl(_$_LikedCategoriesState _value,
      $Res Function(_$_LikedCategoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likedCategoriesList = null,
    Object? selectedCategory = freezed,
    Object? status = null,
  }) {
    return _then(_$_LikedCategoriesState(
      likedCategoriesList: null == likedCategoriesList
          ? _value._likedCategoriesList
          : likedCategoriesList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_LikedCategoriesState extends _LikedCategoriesState {
  const _$_LikedCategoriesState(
      {final List<Category> likedCategoriesList = const [],
      this.selectedCategory,
      this.status = const BaseStatus.initial()})
      : _likedCategoriesList = likedCategoriesList,
        super._();

  final List<Category> _likedCategoriesList;
  @override
  @JsonKey()
  List<Category> get likedCategoriesList {
    if (_likedCategoriesList is EqualUnmodifiableListView)
      return _likedCategoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedCategoriesList);
  }

  @override
  final Category? selectedCategory;
  @override
  @JsonKey()
  final BaseStatus<dynamic> status;

  @override
  String toString() {
    return 'LikedCategoriesState(likedCategoriesList: $likedCategoriesList, selectedCategory: $selectedCategory, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikedCategoriesState &&
            const DeepCollectionEquality()
                .equals(other._likedCategoriesList, _likedCategoriesList) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_likedCategoriesList),
      selectedCategory,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikedCategoriesStateCopyWith<_$_LikedCategoriesState> get copyWith =>
      __$$_LikedCategoriesStateCopyWithImpl<_$_LikedCategoriesState>(
          this, _$identity);
}

abstract class _LikedCategoriesState extends LikedCategoriesState {
  const factory _LikedCategoriesState(
      {final List<Category> likedCategoriesList,
      final Category? selectedCategory,
      final BaseStatus<dynamic> status}) = _$_LikedCategoriesState;
  const _LikedCategoriesState._() : super._();

  @override
  List<Category> get likedCategoriesList;
  @override
  Category? get selectedCategory;
  @override
  BaseStatus<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$$_LikedCategoriesStateCopyWith<_$_LikedCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
