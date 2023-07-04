import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/articles/ui/save_to_collection_dialog.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ArticleDetailsBottomBar extends StatelessWidget {
  const ArticleDetailsBottomBar({
    Key? key,
    required this.article,
    this.useLightBottomBar = false,
  }) : super(key: key);

  final Article article;
  final bool useLightBottomBar;

  Future _showSaveToCollectionDialog(BuildContext context) => showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => SaveToCollectionDialog(
          article: article,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.articles;
    return GestureDetector(
      onTap: () {
        final authPreferences = injector.get<AuthPreferences>();
        if (authPreferences.isLoggedIn()) {
          _showSaveToCollectionDialog(context);
        } else {
          context.navigateToLoginScreen();
        }
      },
      child: Container(
        color: useLightBottomBar
            ? context.colors.black
            : context.colors.background,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color:
                useLightBottomBar ? context.colors.white : context.colors.text,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: SizedBox(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.titleBold17(
                  i18n.saveToCollection,
                  color: useLightBottomBar
                      ? context.colors.black
                      : context.colors.background,
                ),
                Assets.icons.addAlt.svg(
                  color: useLightBottomBar
                      ? context.colors.black
                      : context.colors.background,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
