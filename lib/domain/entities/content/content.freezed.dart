// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  List<Article> get heros => throw _privateConstructorUsedError;
  List<Article> get trending => throw _privateConstructorUsedError;
  List<Article> get editorsChoice => throw _privateConstructorUsedError;
  List<Article> get topStory => throw _privateConstructorUsedError;
  List<Article> get reels => throw _privateConstructorUsedError;
  List<Advertise> get advertises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call(
      {List<Article> heros,
      List<Article> trending,
      List<Article> editorsChoice,
      List<Article> topStory,
      List<Article> reels,
      List<Advertise> advertises});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heros = null,
    Object? trending = null,
    Object? editorsChoice = null,
    Object? topStory = null,
    Object? reels = null,
    Object? advertises = null,
  }) {
    return _then(_value.copyWith(
      heros: null == heros
          ? _value.heros
          : heros // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      editorsChoice: null == editorsChoice
          ? _value.editorsChoice
          : editorsChoice // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      topStory: null == topStory
          ? _value.topStory
          : topStory // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      reels: null == reels
          ? _value.reels
          : reels // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      advertises: null == advertises
          ? _value.advertises
          : advertises // ignore: cast_nullable_to_non_nullable
              as List<Advertise>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$_ContentCopyWith(
          _$_Content value, $Res Function(_$_Content) then) =
      __$$_ContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Article> heros,
      List<Article> trending,
      List<Article> editorsChoice,
      List<Article> topStory,
      List<Article> reels,
      List<Advertise> advertises});
}

/// @nodoc
class __$$_ContentCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$_Content>
    implements _$$_ContentCopyWith<$Res> {
  __$$_ContentCopyWithImpl(_$_Content _value, $Res Function(_$_Content) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heros = null,
    Object? trending = null,
    Object? editorsChoice = null,
    Object? topStory = null,
    Object? reels = null,
    Object? advertises = null,
  }) {
    return _then(_$_Content(
      heros: null == heros
          ? _value._heros
          : heros // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      trending: null == trending
          ? _value._trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      editorsChoice: null == editorsChoice
          ? _value._editorsChoice
          : editorsChoice // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      topStory: null == topStory
          ? _value._topStory
          : topStory // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      reels: null == reels
          ? _value._reels
          : reels // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      advertises: null == advertises
          ? _value._advertises
          : advertises // ignore: cast_nullable_to_non_nullable
              as List<Advertise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Content implements _Content {
  const _$_Content(
      {required final List<Article> heros,
      required final List<Article> trending,
      required final List<Article> editorsChoice,
      required final List<Article> topStory,
      required final List<Article> reels,
      final List<Advertise> advertises = const []})
      : _heros = heros,
        _trending = trending,
        _editorsChoice = editorsChoice,
        _topStory = topStory,
        _reels = reels,
        _advertises = advertises;

  factory _$_Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);

  final List<Article> _heros;
  @override
  List<Article> get heros {
    if (_heros is EqualUnmodifiableListView) return _heros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heros);
  }

  final List<Article> _trending;
  @override
  List<Article> get trending {
    if (_trending is EqualUnmodifiableListView) return _trending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trending);
  }

  final List<Article> _editorsChoice;
  @override
  List<Article> get editorsChoice {
    if (_editorsChoice is EqualUnmodifiableListView) return _editorsChoice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_editorsChoice);
  }

  final List<Article> _topStory;
  @override
  List<Article> get topStory {
    if (_topStory is EqualUnmodifiableListView) return _topStory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topStory);
  }

  final List<Article> _reels;
  @override
  List<Article> get reels {
    if (_reels is EqualUnmodifiableListView) return _reels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reels);
  }

  final List<Advertise> _advertises;
  @override
  @JsonKey()
  List<Advertise> get advertises {
    if (_advertises is EqualUnmodifiableListView) return _advertises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertises);
  }

  @override
  String toString() {
    return 'Content(heros: $heros, trending: $trending, editorsChoice: $editorsChoice, topStory: $topStory, reels: $reels, advertises: $advertises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Content &&
            const DeepCollectionEquality().equals(other._heros, _heros) &&
            const DeepCollectionEquality().equals(other._trending, _trending) &&
            const DeepCollectionEquality()
                .equals(other._editorsChoice, _editorsChoice) &&
            const DeepCollectionEquality().equals(other._topStory, _topStory) &&
            const DeepCollectionEquality().equals(other._reels, _reels) &&
            const DeepCollectionEquality()
                .equals(other._advertises, _advertises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_heros),
      const DeepCollectionEquality().hash(_trending),
      const DeepCollectionEquality().hash(_editorsChoice),
      const DeepCollectionEquality().hash(_topStory),
      const DeepCollectionEquality().hash(_reels),
      const DeepCollectionEquality().hash(_advertises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      __$$_ContentCopyWithImpl<_$_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentToJson(
      this,
    );
  }
}

abstract class _Content implements Content {
  const factory _Content(
      {required final List<Article> heros,
      required final List<Article> trending,
      required final List<Article> editorsChoice,
      required final List<Article> topStory,
      required final List<Article> reels,
      final List<Advertise> advertises}) = _$_Content;

  factory _Content.fromJson(Map<String, dynamic> json) = _$_Content.fromJson;

  @override
  List<Article> get heros;
  @override
  List<Article> get trending;
  @override
  List<Article> get editorsChoice;
  @override
  List<Article> get topStory;
  @override
  List<Article> get reels;
  @override
  List<Advertise> get advertises;
  @override
  @JsonKey(ignore: true)
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
