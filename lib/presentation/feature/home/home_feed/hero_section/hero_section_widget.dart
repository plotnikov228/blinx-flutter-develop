import 'dart:math';

import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/articles/article_screen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';

import 'animated_zoom_widget.dart';

class HeroSectionWidget extends StatefulWidget {
  const HeroSectionWidget({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  State<HeroSectionWidget> createState() => _HeroSectionWidgetState();
}

class _HeroSectionWidgetState extends State<HeroSectionWidget> with TickerProviderStateMixin {
  final _pageController = PageController();
  List<Article> get _articles => widget.articles;
  late final RestartableTimer _timer;
  int currentIndex=0;
  late List<AnimationController> LAC=List.generate(widget.articles.length, (index) => AnimationController(duration: const Duration(seconds: 8), vsync: this));

  @override
  void initState() {
    super.initState();
    _timer = RestartableTimer(const Duration(seconds: 8), () => _startPageTransition(),);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();

    for (var element in LAC) {
      element.dispose();
    }
    super.dispose();
  }

  void _startPageTransition() {
    final lastItem = currentIndex == _articles.length - 1;
    currentIndex = lastItem ? 0 : currentIndex + 1;
    _pageController.jumpToPage(currentIndex);
  }

  List<Widget> getWid() {
    var i=-1;
    return _articles.map((e) {
      i++;
      return _Circle(
        isSelected: i == currentIndex,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.width * (5/4);

    return Material(
      color: Colors.transparent,
      child: SizedBox(
        width: double.infinity,
        height: heroHeight,
        child: Stack(
          children: [

            PageView.builder(
              controller: _pageController,
              itemCount: _articles.length,
              itemBuilder: (context, index) {
                var tag=_articles[index].path+Random().nextInt(999999999).toString()+Random().nextInt(999999999).toString();

                return GestureDetector(
                onTap: () {
                  /*Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: const Duration(seconds: 1),
                          pageBuilder: (_, __, ___) => ArticleScreen(
                            article: _articles[index],
                            tag: tag,
                          )));*/
                  context.router.push(
                      ArticleScreenRoute(
                        article: _articles[index],
                        tag: tag,
                      )
                  );
                },
                child: ClipRRect(
                  child: Stack(
                    children: [
                      Container(
                        height: heroHeight,
                        width: double.infinity,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: FractionalOffset.bottomCenter,
                            end: FractionalOffset.topCenter,
                            stops: const [0, .3, 1.0],
                            colors: [
                              context.colors.black.withOpacity(.95),
                              context.colors.black.withOpacity(.4),
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: AnimatedZoomWidget(
                          scaleDuration: const Duration(seconds: 8),
                          animationController: LAC[index],
                          child: Hero(
                            tag: tag,
                            child: AppNetworkImage(
                        imageUrl: _articles[index].mobileHero
                        ),
                          ),
                        )
                      ),
                      PositionedDirectional(
                        start: 16,
                        bottom: 44,
                        child: _OverlayComponents(
                          article: _articles[index],
                        ),
                      ),
                    ],
                  ),
                ),
              );
              },
              onPageChanged: (e) {
                _timer.reset();

                setState(() {
                  currentIndex=e;
                });
              },
            ),

            PositionedDirectional(
              start: 16,
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: getWid(),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

class _OverlayComponents extends StatelessWidget {
  const _OverlayComponents({
    Key? key,
    required this.article,
  }) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: screenSize.width * .85,
          child: GradientText(
            article.title,
            style: AppTextStyles.headlineLarge32.copyWith(
                fontSize: 26
            ),
            gradient: article.categories.first.gradientFromColorString,
          ),
        ),
      ],
    );
  }
}

class _Circle extends StatelessWidget {
  const _Circle({Key? key, required this.isSelected}) : super(key: key);
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: isSelected ? Colors.deepOrange : context.colors.primary,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}