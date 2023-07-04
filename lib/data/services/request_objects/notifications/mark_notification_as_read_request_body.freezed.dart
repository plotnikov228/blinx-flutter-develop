// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_notification_as_read_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarkNotificationAsReadRequestBody _$MarkNotificationAsReadRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _MarkAsReadRequestBody.fromJson(json);
}

/// @nodoc
mixin _$MarkNotificationAsReadRequestBody {
  List<int> get notificationIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkNotificationAsReadRequestBodyCopyWith<MarkNotificationAsReadRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkNotificationAsReadRequestBodyCopyWith<$Res> {
  factory $MarkNotificationAsReadRequestBodyCopyWith(
          MarkNotificationAsReadRequestBody value,
          $Res Function(MarkNotificationAsReadRequestBody) then) =
      _$MarkNotificationAsReadRequestBodyCopyWithImpl<$Res,
          MarkNotificationAsReadRequestBody>;
  @useResult
  $Res call({List<int> notificationIds});
}

/// @nodoc
class _$MarkNotificationAsReadRequestBodyCopyWithImpl<$Res,
        $Val extends MarkNotificationAsReadRequestBody>
    implements $MarkNotificationAsReadRequestBodyCopyWith<$Res> {
  _$MarkNotificationAsReadRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationIds = null,
  }) {
    return _then(_value.copyWith(
      notificationIds: null == notificationIds
          ? _value.notificationIds
          : notificationIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarkAsReadRequestBodyCopyWith<$Res>
    implements $MarkNotificationAsReadRequestBodyCopyWith<$Res> {
  factory _$$_MarkAsReadRequestBodyCopyWith(_$_MarkAsReadRequestBody value,
          $Res Function(_$_MarkAsReadRequestBody) then) =
      __$$_MarkAsReadRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> notificationIds});
}

/// @nodoc
class __$$_MarkAsReadRequestBodyCopyWithImpl<$Res>
    extends _$MarkNotificationAsReadRequestBodyCopyWithImpl<$Res,
        _$_MarkAsReadRequestBody>
    implements _$$_MarkAsReadRequestBodyCopyWith<$Res> {
  __$$_MarkAsReadRequestBodyCopyWithImpl(_$_MarkAsReadRequestBody _value,
      $Res Function(_$_MarkAsReadRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationIds = null,
  }) {
    return _then(_$_MarkAsReadRequestBody(
      notificationIds: null == notificationIds
          ? _value._notificationIds
          : notificationIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarkAsReadRequestBody implements _MarkAsReadRequestBody {
  const _$_MarkAsReadRequestBody({required final List<int> notificationIds})
      : _notificationIds = notificationIds;

  factory _$_MarkAsReadRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_MarkAsReadRequestBodyFromJson(json);

  final List<int> _notificationIds;
  @override
  List<int> get notificationIds {
    if (_notificationIds is EqualUnmodifiableListView) return _notificationIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationIds);
  }

  @override
  String toString() {
    return 'MarkNotificationAsReadRequestBody(notificationIds: $notificationIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkAsReadRequestBody &&
            const DeepCollectionEquality()
                .equals(other._notificationIds, _notificationIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notificationIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarkAsReadRequestBodyCopyWith<_$_MarkAsReadRequestBody> get copyWith =>
      __$$_MarkAsReadRequestBodyCopyWithImpl<_$_MarkAsReadRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarkAsReadRequestBodyToJson(
      this,
    );
  }
}

abstract class _MarkAsReadRequestBody
    implements MarkNotificationAsReadRequestBody {
  const factory _MarkAsReadRequestBody(
      {required final List<int> notificationIds}) = _$_MarkAsReadRequestBody;

  factory _MarkAsReadRequestBody.fromJson(Map<String, dynamic> json) =
      _$_MarkAsReadRequestBody.fromJson;

  @override
  List<int> get notificationIds;
  @override
  @JsonKey(ignore: true)
  _$$_MarkAsReadRequestBodyCopyWith<_$_MarkAsReadRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
