import 'package:blinx/data/api/api_config.dart';
import 'package:blinx/injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'storyteller.freezed.dart';
part 'storyteller.g.dart';

@Freezed(addImplicitFinal: false)
class Storyteller with _$Storyteller {
  const Storyteller._();

  factory Storyteller({
    @Default('') String path,
    @Default('') String name,
    @Default('') String displayName,
    required Avatar avatar,
    @Default([]) List<String> tags,
    @Default(false) bool followed,
    @Default(0) int followers,
    @Default(0) int totalLikedContent,
  }) = _Storyteller;

  String get avatarImageUrl => injector<ApiConfig>().imageUrl + avatar.avatar;

  factory Storyteller.fromJson(Map<String, dynamic> json) =>
      _$StorytellerFromJson(json);
}

@freezed
class Avatar with _$Avatar {
  factory Avatar({
    @Default('') String avatar,
  }) = _Avatar;

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);
}
