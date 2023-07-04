import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/articles_by_category_page/ui/articles_by_category_body.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/articles_by_categories_cubit.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/liked_categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesByCategoryPage extends StatelessWidget {
  const ArticlesByCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LikedCategoriesCubit>(
          create: (context) => injector()..loadLikedCategories(),
        ),
        BlocProvider<ArticlesByCategoriesCubit>(
          create: (context) => injector()..getArticlesByCategory(),
        ),
      ],
      child: const ArticlesByCategoriesBody(),
    );
  }
}
