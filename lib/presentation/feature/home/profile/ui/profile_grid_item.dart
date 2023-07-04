import 'package:blinx/domain/entities/profile_item.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class ProfileGridItem extends StatelessWidget {
  const ProfileGridItem({super.key, required this.profileItem});

  final ProfileItem profileItem;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        color: context.colors.darkGrey,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: profileItem.onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgIcon.from(profileItem.icon, color: context.colors.text),
                const SizedBox(height: 16),
                AppText.title(
                  profileItem.name,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
