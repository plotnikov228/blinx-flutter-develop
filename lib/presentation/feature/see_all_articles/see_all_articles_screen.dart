import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/see_all_articles/cubit/see_all_articles_cubit.dart';
import 'package:blinx/presentation/feature/see_all_articles/ui/see_all_articles_body.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllArticlesScreen extends StatelessWidget {
  const SeeAllArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlinxAppBar.normal(),
      body: BlocProvider<SeeAllArticlesCubit>(
        create: (context) => injector()..loadArticles(),
        child: const SeeAllArticlesBody(),
      ),
    );
  }
}
