import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleDetailsHtmlData extends StatelessWidget {
  const ArticleDetailsHtmlData({
    super.key,
    required this.htmlData,
    required this.color,
  });

  final String htmlData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
        child: Html(
          data: htmlData,
          onLinkTap: (url, attributes, element) async {
            await launch(url!);
          },
          style: {
            'body': Style(
              fontSize: FontSize(140),
              letterSpacing: 0.2,
              fontWeight: FontWeight.w100,
              lineHeight: const LineHeight(1.6),
              color: color,
            ),
            'p': Style(
              fontSize: FontSize(140),
              letterSpacing: 0.2,
              fontWeight: FontWeight.w100,
              lineHeight: const LineHeight(1.6),
              color: color,
              textAlign: TextAlign.justify,
            ),
          },
        )
    );
    /*return HtmlWidget(
      htmlData,
      onTapUrl: (url)  async {
        await launch(url);
        return false;
      },
      textStyle: TextStyle(
        fontSize: 14,
        letterSpacing: 0.2,
        fontWeight: FontWeight.w100,
        color: color,
      ),
    );*/
  }
}

