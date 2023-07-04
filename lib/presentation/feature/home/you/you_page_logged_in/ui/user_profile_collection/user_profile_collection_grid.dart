import 'package:blinx/domain/entities/collection.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

import 'add_collection_item.dart';
import 'profile_collection_item.dart';

class UserProfileCollectionGrid extends StatelessWidget {
  const UserProfileCollectionGrid({super.key, required this.collections});

  final List<Collection?> collections;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: collections.length + 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 1.41,
      ),
      itemBuilder: (context, index) => index == 0
          ? const AddCollectionItem()
          : (collections[0] == null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: const ShimmerBox())
              : ProfileCollectionItem(
                  collection: collections[index-1]!,
                )),
    );
  }
}
