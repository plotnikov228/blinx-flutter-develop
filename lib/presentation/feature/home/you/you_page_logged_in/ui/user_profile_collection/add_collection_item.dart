import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/user_profile_collection/add_collection_dialog_content.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AddCollectionItem extends StatelessWidget {
  const AddCollectionItem({super.key});

  void _onTapAddCollectionButton(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => addCollectionDialog(context),
        //AddCollectionBottomSheetContent(),
      );

  Widget addCollectionDialog(BuildContext context) {
    return const AddCollectionDialogContent();
  }

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
