import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SearchResultEmptyStates extends StatelessWidget {
  const SearchResultEmptyStates({super.key, required this.searchTerm});

  final String searchTerm;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.explore;
    return AppSingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Assets.icons.emptyBox.svg(
              color: context.colors.text,
            ),
            const SizedBox(height: 30),
            AppText.body500(
              '${i18n.noSearchResult} "$searchTerm"',
              textAlign: TextAlign.center,
              fontSize: 16,
            ),
            const SizedBox(height: 20),
            AppText.body(i18n.someSuggestions),
            const SizedBox(height: 5),
            AppText.body(i18n.checkSpelling),
            const SizedBox(height: 5),
            AppText.body(
              i18n.tryDifferentWords,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            AppText.body(i18n.enterFewerWords),
          ],
        ),
      ),
    );
  }
}
