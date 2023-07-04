// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<Collection?> get collections => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionStateCopyWith<CollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionStateCopyWith<$Res> {
  factory $CollectionStateCopyWith(
          CollectionState value, $Res Function(CollectionState) then) =
      _$CollectionStateCopyWithImpl<$Res, CollectionState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<Collection?> collections});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$CollectionStateCopyWithImpl<$Res, $Val extends CollectionState>
    implements $CollectionStateCopyWith<$Res> {
  _$CollectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? collections = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Collection?>,
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
abstract class _$$_CollectionStateCopyWith<$Res>
    implements $CollectionStateCopyWith<$Res> {
  factory _$$_CollectionStateCopyWith(
          _$_CollectionState value, $Res Function(_$_CollectionState) then) =
      __$$_CollectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<Collection?> collections});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$_CollectionStateCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$_CollectionState>
    implements _$$_CollectionStateCopyWith<$Res> {
  __$$_CollectionStateCopyWithImpl(
      _$_CollectionState _value, $Res Function(_$_CollectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? collections = null,
  }) {
    return _then(_$_CollectionState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Collection?>,
    ));
  }
}

/// @nodoc

class _$_CollectionState extends _CollectionState {
  _$_CollectionState(
      {this.status = const BaseStatus.initial(),
      final List<Collection?> collections = const [
        null,
        null,
        null,
        null,
        null
      ]})
      : _collections = collections,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<Collection?> _collections;
  @override
  @JsonKey()
  List<Collection?> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  String toString() {
    return 'CollectionState(status: $status, collections: $collections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_collections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionStateCopyWith<_$_CollectionState> get copyWith =>
      __$$_CollectionStateCopyWithImpl<_$_CollectionState>(this, _$identity);
}

abstract class _CollectionState extends CollectionState {
  factory _CollectionState(
      {final BaseStatus<dynamic> status,
      final List<Collection?> collections}) = _$_CollectionState;
  _CollectionState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  List<Collection?> get collections;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionStateCopyWith<_$_CollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
