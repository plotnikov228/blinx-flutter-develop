import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/collection.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'collection_sheet_content.dart';

class ProfileCollectionItem extends StatelessWidget {
  const ProfileCollectionItem({super.key, required this.collection});
  final Collection collection;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(
        CollectionDetailsPageRoute(
          collection: collection,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                foregroundDecoration: BoxDecoration(
                  color: context.colors.darkGrey,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter,
                    stops: const [0, .3, .8],
                    colors: [
                      context.colors.black.withOpacity(1),
                      context.colors.black.withOpacity(.6),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: AppNetworkImage(
                  imageUrl: collection.imageUrl ?? '',
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                splashRadius: 1,
                  onPressed: () {
                    AppBottomSheet.showSheet(
                      context,
                      child: CollectionSheetContent(
                        hideLink: false,
                        idCollection: collection.id!,
                      ),
                    );
                  },
                  icon: Assets.icons.collectionOptions.svg(),
                ),
            ),
            PositionedDirectional(
              start: 16,
              bottom: 16,
              child: AppText.body800(
                '${collection.name} (${collection.articles!=null?collection.articles!.length:0})',
                maxLines: 1,
                fontSize: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
