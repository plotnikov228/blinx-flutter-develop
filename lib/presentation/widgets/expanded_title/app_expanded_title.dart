import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppExpandedTile extends StatelessWidget {
  const AppExpandedTile({
    Key? key,
    required this.headingText,
    this.children = const <Widget>[],
  }) : super(key: key);

  final String headingText;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colors.inputBorder,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: ListTileTheme(
        dense: true,
        child: ExpansionTile(
          backgroundColor: context.colors.darkGrey,
          collapsedBackgroundColor: context.colors.darkGrey,
          iconColor: context.colors.text,
          title: AppText.body(headingText),
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppExpandedListTileItemText extends StatelessWidget {
  const AppExpandedListTileItemText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: AppText.body(text),
    );
  }
}
