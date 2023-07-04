import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'add_collection_bottom_sheet_content.dart';

class AddCollectionItem extends StatelessWidget {
  const AddCollectionItem({super.key});

  void _onTapAddCollectionButton(BuildContext context) =>
      AppBottomSheet.showSheet(
        context,
        sheetTitle:
            context.localization.collection.addCollectionContentHeadline,
        showCloseIcon: true,
        child: const AddCollectionBottomSheetContent(),
      );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        color: context.colors.darkGrey,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => _onTapAddCollectionButton(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.createCollection.svg(
                  color: context.colors.text,
                ),
                const SizedBox(height: 16),
                AppText.body800(
                  context.localization.collection.createCollection,
                  fontSize: 16,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
