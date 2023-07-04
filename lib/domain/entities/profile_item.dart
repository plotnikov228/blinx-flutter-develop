import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_item.freezed.dart';

@freezed
class ProfileItem with _$ProfileItem {
  const ProfileItem._();

  const factory ProfileItem({
    required String id,
    required String name,
    required String icon,
    required Function() onTap,
  }) = _ProfileItem;
}
