import 'dart:async';

import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_card.dart';
import 'package:flutter/material.dart';

import '../../reels_details/reels_details_screen.dart';

class HeroReelsDetailsScreen extends StatefulWidget {
  final List<Article> listReels;
  final Article article;
  final String tag;
  const HeroReelsDetailsScreen(this.article,
      {super.key, required this.listReels, required this.tag});

  @override
  State<HeroReelsDetailsScreen> createState() => _HeroReelsDetailsScreenState();
}

class _HeroReelsDetailsScreenState extends State<HeroReelsDetailsScreen> {
  late Widget widgetContent;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widgetContent =
        ReelsCard(imageUrl: widget.article.imageUrl, article: widget.article,
        squared: true,
        );
    Timer(const Duration(seconds: 2), () {
      setState(() {
        widgetContent = GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.velocity.pixelsPerSecond.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: Hero(
            tag: widget.article.path,
            child: ReelsDetailsScreen(
              widget.listReels,
              selectedArticle: widget.article,
              doPop: true,
            ),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return widgetContent;
  }
}
