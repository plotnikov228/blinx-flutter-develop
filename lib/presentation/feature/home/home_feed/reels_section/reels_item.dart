import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:blinx/presentation/feature/home/home_feed/reels_section/reels_content.dart';
import 'package:blinx/presentation/feature/home/home_feed/reels_section/reels_image.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReelsItem extends StatelessWidget {
  const ReelsItem({
    Key? key,
    required this.reelsItem,
    required this.reels,
    this.page = '',
  }) : super(key: key);

  final List<Article> reels;
  final Article reelsItem;
  final String page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 326.26,
              width: 160,
              decoration: BoxDecoration(
                gradient: reelsItem.categories.first.gradientFromColorString,
                borderRadius: const BorderRadiusDirectional.only(
                  topEnd: Radius.circular(30),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                ReelsImage(
                  imageUrl: reelsItem.mobileBlinx,
                ),
                ReelsContent(
                  onPlayIconTap: () {
                    if (page == '') {
                      context.router.push(
                        ReelsDetailsScreenRoute(
                          articles: reels,
                          selectedArticle: reelsItem,
                        ),
                      );
                    } else {
                      context.read<HomeAbCubit>().update(false,
                          selectedArticle: reelsItem, page: page);
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
