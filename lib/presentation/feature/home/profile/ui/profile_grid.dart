import 'package:blinx/domain/entities/profile_item.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_grid_item.dart';
import 'package:flutter/material.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({super.key, required this.profieItems});

  final List<ProfileItem> profieItems;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: profieItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 1.536,
      ),
      itemBuilder: (context, index) => ProfileGridItem(
        profileItem: profieItems[index],
      ),
    );
  }
}
