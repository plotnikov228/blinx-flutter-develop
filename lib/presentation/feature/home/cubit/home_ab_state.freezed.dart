// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeAbState {
  bool get showAb => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  List<Article> get playList => throw _privateConstructorUsedError;
  Article? get selectedArticle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeAbStateCopyWith<HomeAbState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAbStateCopyWith<$Res> {
  factory $HomeAbStateCopyWith(
          HomeAbState value, $Res Function(HomeAbState) then) =
      _$HomeAbStateCopyWithImpl<$Res, HomeAbState>;
  @useResult
  $Res call(
      {bool showAb,
      String page,
      List<Article> playList,
      Article? selectedArticle});

  $ArticleCopyWith<$Res>? get selectedArticle;
}

/// @nodoc
class _$HomeAbStateCopyWithImpl<$Res, $Val extends HomeAbState>
    implements $HomeAbStateCopyWith<$Res> {
  _$HomeAbStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAb = null,
    Object? page = null,
    Object? playList = null,
    Object? selectedArticle = freezed,
  }) {
    return _then(_value.copyWith(
      showAb: null == showAb
          ? _value.showAb
          : showAb // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      playList: null == playList
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      selectedArticle: freezed == selectedArticle
          ? _value.selectedArticle
          : selectedArticle // ignore: cast_nullable_to_non_nullable
              as Article?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res>? get selectedArticle {
    if (_value.selectedArticle == null) {
      return null;
    }

    return $ArticleCopyWith<$Res>(_value.selectedArticle!, (value) {
      return _then(_value.copyWith(selectedArticle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeAbStateCopyWith<$Res>
    implements $HomeAbStateCopyWith<$Res> {
  factory _$$_HomeAbStateCopyWith(
          _$_HomeAbState value, $Res Function(_$_HomeAbState) then) =
      __$$_HomeAbStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showAb,
      String page,
      List<Article> playList,
      Article? selectedArticle});

  @override
  $ArticleCopyWith<$Res>? get selectedArticle;
}

/// @nodoc
class __$$_HomeAbStateCopyWithImpl<$Res>
    extends _$HomeAbStateCopyWithImpl<$Res, _$_HomeAbState>
    implements _$$_HomeAbStateCopyWith<$Res> {
  __$$_HomeAbStateCopyWithImpl(
      _$_HomeAbState _value, $Res Function(_$_HomeAbState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAb = null,
    Object? page = null,
    Object? playList = null,
    Object? selectedArticle = freezed,
  }) {
    return _then(_$_HomeAbState(
      showAb: null == showAb
          ? _value.showAb
          : showAb // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      playList: null == playList
          ? _value._playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      selectedArticle: freezed == selectedArticle
          ? _value.selectedArticle
          : selectedArticle // ignore: cast_nullable_to_non_nullable
              as Article?,
    ));
  }
}

/// @nodoc

class _$_HomeAbState extends _HomeAbState {
  _$_HomeAbState(
      {this.showAb = true,
      this.page = '',
      final List<Article> playList = const [],
      this.selectedArticle})
      : _playList = playList,
        super._();

  @override
  @JsonKey()
  final bool showAb;
  @override
  @JsonKey()
  final String page;
  final List<Article> _playList;
  @override
  @JsonKey()
  List<Article> get playList {
    if (_playList is EqualUnmodifiableListView) return _playList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playList);
  }

  @override
  final Article? selectedArticle;

  @override
  String toString() {
    return 'HomeAbState(showAb: $showAb, page: $page, playList: $playList, selectedArticle: $selectedArticle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeAbState &&
            (identical(other.showAb, showAb) || other.showAb == showAb) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._playList, _playList) &&
            (identical(other.selectedArticle, selectedArticle) ||
                other.selectedArticle == selectedArticle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showAb, page,
      const DeepCollectionEquality().hash(_playList), selectedArticle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeAbStateCopyWith<_$_HomeAbState> get copyWith =>
      __$$_HomeAbStateCopyWithImpl<_$_HomeAbState>(this, _$identity);
}

abstract class _HomeAbState extends HomeAbState {
  factory _HomeAbState(
      {final bool showAb,
      final String page,
      final List<Article> playList,
      final Article? selectedArticle}) = _$_HomeAbState;
  _HomeAbState._() : super._();

  @override
  bool get showAb;
  @override
  String get page;
  @override
  List<Article> get playList;
  @override
  Article? get selectedArticle;
  @override
  @JsonKey(ignore: true)
  _$$_HomeAbStateCopyWith<_$_HomeAbState> get copyWith =>
      throw _privateConstructorUsedError;
}
