import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/explore/cubit/explore_all_categories_cubit.dart';
import 'package:blinx/presentation/feature/explore/cubit/explore_search_cubit.dart';
import 'package:blinx/presentation/feature/explore/widgets/collection_categories.dart';
import 'package:blinx/presentation/feature/explore/widgets/explore_search_delegate.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExploreSearchCubit>(
      create: (context) => injector(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: BlinxAppBar.search(
              appBarHeight: 50,
              onTap: () => showSearchForCustomiseSearchDelegate(
                context: context,
                delegate: ExploreSearchDelegate(context),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BlocProvider<ExploreAllCategoriesCubit>(
                create: (context) => injector()..loadAllCategories(),
                child: const CollectionCategoriesContent(),
              ),
            ),
          );
        },
      ),
    );
  }
}
