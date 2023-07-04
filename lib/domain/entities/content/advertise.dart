import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertise.freezed.dart';
part 'advertise.g.dart';

@freezed
class Advertise with _$Advertise {
  const factory Advertise({
    @Default('') String id,
    @Default('') String image,
    @Default('') String name,
    @Default('') String url,
  }) = _Advertise;

  factory Advertise.fromJson(Map<String, dynamic> json) =>
      _$AdvertiseFromJson(json);
}
