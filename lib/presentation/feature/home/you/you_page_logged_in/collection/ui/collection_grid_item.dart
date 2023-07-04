import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/collection.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/feature/collection/ui/collection_action_sheet_content.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CollectionGridItem extends StatelessWidget {
  const CollectionGridItem({super.key, required this.collection});
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
              child: Image.network(
                collection.imageUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
            PositionedDirectional(
              end: 16,
              top: 16,
              child: GestureDetector(
                onTap: () {
                  AppBottomSheet.showSheet(
                    context,
                    child: CollectionSheetContent(
                      hideLink: false,
                      idCollection: collection.id!,
                    ),
                  );
                },
                child: Assets.icons.moreVertical.svg(),
              ),
            ),
            PositionedDirectional(
              start: 16,
              bottom: 16,
              child: AppText.body800(
                collection.name,
                maxLines: 1,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
