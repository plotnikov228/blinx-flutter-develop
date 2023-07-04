import 'package:blinx/data/api/api_config.dart';
import 'package:blinx/injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar.freezed.dart';
part 'avatar.g.dart';

@freezed
class Avatar with _$Avatar {
  const Avatar._();

  factory Avatar({
    required String id,
    required String path,
    required String name,
    required Image image,
  }) = _Avatar;

  String get imageUrl => injector<ApiConfig>().imageUrl + image.avatar;

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);
}

@freezed
class Image with _$Image {
  factory Image({
    required String avatar,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
