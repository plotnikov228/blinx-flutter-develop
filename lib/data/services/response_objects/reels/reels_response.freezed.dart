// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reels_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReelsResponse _$ReelsResponseFromJson(Map<String, dynamic> json) {
  return _ReelsResponse.fromJson(json);
}

/// @nodoc
mixin _$ReelsResponse {
  int get total => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  List<Article> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReelsResponseCopyWith<ReelsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsResponseCopyWith<$Res> {
  factory $ReelsResponseCopyWith(
          ReelsResponse value, $Res Function(ReelsResponse) then) =
      _$ReelsResponseCopyWithImpl<$Res, ReelsResponse>;
  @useResult
  $Res call({int total, int offset, int limit, List<Article> results});
}

/// @nodoc
class _$ReelsResponseCopyWithImpl<$Res, $Val extends ReelsResponse>
    implements $ReelsResponseCopyWith<$Res> {
  _$ReelsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? offset = null,
    Object? limit = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReelsResponseCopyWith<$Res>
    implements $ReelsResponseCopyWith<$Res> {
  factory _$$_ReelsResponseCopyWith(
          _$_ReelsResponse value, $Res Function(_$_ReelsResponse) then) =
      __$$_ReelsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int offset, int limit, List<Article> results});
}

/// @nodoc
class __$$_ReelsResponseCopyWithImpl<$Res>
    extends _$ReelsResponseCopyWithImpl<$Res, _$_ReelsResponse>
    implements _$$_ReelsResponseCopyWith<$Res> {
  __$$_ReelsResponseCopyWithImpl(
      _$_ReelsResponse _value, $Res Function(_$_ReelsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? offset = null,
    Object? limit = null,
    Object? results = null,
  }) {
    return _then(_$_ReelsResponse(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReelsResponse extends _ReelsResponse {
  const _$_ReelsResponse(
      {required this.total,
      required this.offset,
      required this.limit,
      required final List<Article> results})
      : _results = results,
        super._();

  factory _$_ReelsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ReelsResponseFromJson(json);

  @override
  final int total;
  @override
  final int offset;
  @override
  final int limit;
  final List<Article> _results;
  @override
  List<Article> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ReelsResponse(total: $total, offset: $offset, limit: $limit, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReelsResponse &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, offset, limit,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReelsResponseCopyWith<_$_ReelsResponse> get copyWith =>
      __$$_ReelsResponseCopyWithImpl<_$_ReelsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReelsResponseToJson(
      this,
    );
  }
}

abstract class _ReelsResponse extends ReelsResponse {
  const factory _ReelsResponse(
      {required final int total,
      required final int offset,
      required final int limit,
      required final List<Article> results}) = _$_ReelsResponse;
  const _ReelsResponse._() : super._();

  factory _ReelsResponse.fromJson(Map<String, dynamic> json) =
      _$_ReelsResponse.fromJson;

  @override
  int get total;
  @override
  int get offset;
  @override
  int get limit;
  @override
  List<Article> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ReelsResponseCopyWith<_$_ReelsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
