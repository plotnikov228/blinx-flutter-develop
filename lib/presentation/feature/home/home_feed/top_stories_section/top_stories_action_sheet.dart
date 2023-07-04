import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/articles/ui/save_to_collection_dialog.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/ui/bottom_sheet_list_tile.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TopStoriesActionSheet extends StatelessWidget {
  const TopStoriesActionSheet({
    Key? key,
    required this.article,
  }) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization;
    final i19n = context.localization.articles;
    return Column(
      children: [
        BottomSheetListTile(
          text: i18n.defaultSection.copyLink,
          svgPath: Assets.icons.copyLink.path,
          onTap: () {
            Clipboard.setData(ClipboardData(text: article.articleWebUrl));
            context.router.pop();
            AppSnackBar.showSuccessMessage(
              context,
              title: i18n.articles.linkCopied,
            );
          },
        ),
        BottomSheetListTile(
          text: i19n.saveToCollection,
          svgPath: Assets.icons.addAlt.path,
          onTap: () {
            final _pref = injector.get<UserPreferences>();
            _pref.getUser().then((value) {
              if (value != null) {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) => SaveToCollectionDialog(
                    article: article,
                  ),
                );
              } else {
                context.router.push(const LoginScreenRoute());
              }
            });
            
          },
        ),
      ],
    );
  }
}
