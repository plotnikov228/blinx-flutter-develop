// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'replace_categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplaceCategoriesResponse _$ReplaceCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _ReplaceCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$ReplaceCategoriesResponse {
  int get id => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  String get createDate => throw _privateConstructorUsedError;
  String get updateDate => throw _privateConstructorUsedError;
  List<String> get categoriesList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplaceCategoriesResponseCopyWith<ReplaceCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplaceCategoriesResponseCopyWith<$Res> {
  factory $ReplaceCategoriesResponseCopyWith(ReplaceCategoriesResponse value,
          $Res Function(ReplaceCategoriesResponse) then) =
      _$ReplaceCategoriesResponseCopyWithImpl<$Res, ReplaceCategoriesResponse>;
  @useResult
  $Res call(
      {int id,
      int version,
      String createDate,
      String updateDate,
      List<String> categoriesList});
}

/// @nodoc
class _$ReplaceCategoriesResponseCopyWithImpl<$Res,
        $Val extends ReplaceCategoriesResponse>
    implements $ReplaceCategoriesResponseCopyWith<$Res> {
  _$ReplaceCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? createDate = null,
    Object? updateDate = null,
    Object? categoriesList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: null == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesList: null == categoriesList
          ? _value.categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReplaceCategoriesResponseCopyWith<$Res>
    implements $ReplaceCategoriesResponseCopyWith<$Res> {
  factory _$$_ReplaceCategoriesResponseCopyWith(
          _$_ReplaceCategoriesResponse value,
          $Res Function(_$_ReplaceCategoriesResponse) then) =
      __$$_ReplaceCategoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int version,
      String createDate,
      String updateDate,
      List<String> categoriesList});
}

/// @nodoc
class __$$_ReplaceCategoriesResponseCopyWithImpl<$Res>
    extends _$ReplaceCategoriesResponseCopyWithImpl<$Res,
        _$_ReplaceCategoriesResponse>
    implements _$$_ReplaceCategoriesResponseCopyWith<$Res> {
  __$$_ReplaceCategoriesResponseCopyWithImpl(
      _$_ReplaceCategoriesResponse _value,
      $Res Function(_$_ReplaceCategoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? createDate = null,
    Object? updateDate = null,
    Object? categoriesList = null,
  }) {
    return _then(_$_ReplaceCategoriesResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: null == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesList: null == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplaceCategoriesResponse implements _ReplaceCategoriesResponse {
  const _$_ReplaceCategoriesResponse(
      {required this.id,
      required this.version,
      required this.createDate,
      required this.updateDate,
      required final List<String> categoriesList})
      : _categoriesList = categoriesList;

  factory _$_ReplaceCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ReplaceCategoriesResponseFromJson(json);

  @override
  final int id;
  @override
  final int version;
  @override
  final String createDate;
  @override
  final String updateDate;
  final List<String> _categoriesList;
  @override
  List<String> get categoriesList {
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesList);
  }

  @override
  String toString() {
    return 'ReplaceCategoriesResponse(id: $id, version: $version, createDate: $createDate, updateDate: $updateDate, categoriesList: $categoriesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplaceCategoriesResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate) &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, version, createDate,
      updateDate, const DeepCollectionEquality().hash(_categoriesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplaceCategoriesResponseCopyWith<_$_ReplaceCategoriesResponse>
      get copyWith => __$$_ReplaceCategoriesResponseCopyWithImpl<
          _$_ReplaceCategoriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplaceCategoriesResponseToJson(
      this,
    );
  }
}

abstract class _ReplaceCategoriesResponse implements ReplaceCategoriesResponse {
  const factory _ReplaceCategoriesResponse(
          {required final int id,
          required final int version,
          required final String createDate,
          required final String updateDate,
          required final List<String> categoriesList}) =
      _$_ReplaceCategoriesResponse;

  factory _ReplaceCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_ReplaceCategoriesResponse.fromJson;

  @override
  int get id;
  @override
  int get version;
  @override
  String get createDate;
  @override
  String get updateDate;
  @override
  List<String> get categoriesList;
  @override
  @JsonKey(ignore: true)
  _$$_ReplaceCategoriesResponseCopyWith<_$_ReplaceCategoriesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
