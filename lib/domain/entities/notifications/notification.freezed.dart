// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InAppNotification _$InAppNotificationFromJson(Map<String, dynamic> json) {
  return _InAppNotification.fromJson(json);
}

/// @nodoc
mixin _$InAppNotification {
  int get id => throw _privateConstructorUsedError;
  Article get article => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InAppNotificationCopyWith<InAppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppNotificationCopyWith<$Res> {
  factory $InAppNotificationCopyWith(
          InAppNotification value, $Res Function(InAppNotification) then) =
      _$InAppNotificationCopyWithImpl<$Res, InAppNotification>;
  @useResult
  $Res call({int id, Article article, DateTime? time, bool isRead});

  $ArticleCopyWith<$Res> get article;
}

/// @nodoc
class _$InAppNotificationCopyWithImpl<$Res, $Val extends InAppNotification>
    implements $InAppNotificationCopyWith<$Res> {
  _$InAppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? article = null,
    Object? time = freezed,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InAppNotificationCopyWith<$Res>
    implements $InAppNotificationCopyWith<$Res> {
  factory _$$_InAppNotificationCopyWith(_$_InAppNotification value,
          $Res Function(_$_InAppNotification) then) =
      __$$_InAppNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Article article, DateTime? time, bool isRead});

  @override
  $ArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$$_InAppNotificationCopyWithImpl<$Res>
    extends _$InAppNotificationCopyWithImpl<$Res, _$_InAppNotification>
    implements _$$_InAppNotificationCopyWith<$Res> {
  __$$_InAppNotificationCopyWithImpl(
      _$_InAppNotification _value, $Res Function(_$_InAppNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? article = null,
    Object? time = freezed,
    Object? isRead = null,
  }) {
    return _then(_$_InAppNotification(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InAppNotification extends _InAppNotification {
  const _$_InAppNotification(
      {required this.id,
      required this.article,
      required this.time,
      this.isRead = false})
      : super._();

  factory _$_InAppNotification.fromJson(Map<String, dynamic> json) =>
      _$$_InAppNotificationFromJson(json);

  @override
  final int id;
  @override
  final Article article;
  @override
  final DateTime? time;
  @override
  @JsonKey()
  final bool isRead;

  @override
  String toString() {
    return 'InAppNotification(id: $id, article: $article, time: $time, isRead: $isRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InAppNotification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, article, time, isRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InAppNotificationCopyWith<_$_InAppNotification> get copyWith =>
      __$$_InAppNotificationCopyWithImpl<_$_InAppNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InAppNotificationToJson(
      this,
    );
  }
}

abstract class _InAppNotification extends InAppNotification {
  const factory _InAppNotification(
      {required final int id,
      required final Article article,
      required final DateTime? time,
      final bool isRead}) = _$_InAppNotification;
  const _InAppNotification._() : super._();

  factory _InAppNotification.fromJson(Map<String, dynamic> json) =
      _$_InAppNotification.fromJson;

  @override
  int get id;
  @override
  Article get article;
  @override
  DateTime? get time;
  @override
  bool get isRead;
  @override
  @JsonKey(ignore: true)
  _$$_InAppNotificationCopyWith<_$_InAppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
