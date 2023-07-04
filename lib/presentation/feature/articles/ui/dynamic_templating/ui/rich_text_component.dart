import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/component.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class RichTextComponent extends StatelessWidget {
  const RichTextComponent(
      {super.key, required this.component, required this.article});
  final Article article;
  final Component component;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SelectionArea(
          child: Html(
        data: component.data.content,
        onLinkTap: (url, attributes, element) async {
          await launch(url!);
        },
        style: {
          'body': Style(
            fontSize: FontSize(16.0),
            letterSpacing: 0.2,
            fontWeight: FontWeight.w100,
            lineHeight: const LineHeight(1.6),
            color: context.colors.text,
            //textAlign: TextAlign.justify,
          ),
          'p': Style(
            fontSize: FontSize(16.0),
            letterSpacing: 0.2,
            fontWeight: FontWeight.w100,
            lineHeight: const LineHeight(1.6),
            color: context.colors.text,
            textAlign: TextAlign.justify,
          ),
        },
      )),
    );
  }
}
