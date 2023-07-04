import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/explore/cubit/explore_all_categories_cubit.dart';
import 'package:blinx/presentation/feature/explore/widgets/search_result_categories_list.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalSearchCategoryList extends StatelessWidget {
  const HorizontalSearchCategoryList(this.parentContext, {super.key});

  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExploreAllCategoriesCubit>(
      create: (context) => injector()..loadAllCategories(),
      child: BlocBuilder<ExploreAllCategoriesCubit, ExploreAllCategoriesState>(
        builder: (context, state) {
          if (state.status.isLoading) {
            return Row(
              children: List.generate(
                  4,
                  (index) => const Padding(
                      padding: EdgeInsetsDirectional.only(start: 16.0),
                      child: ShimmerBox(
                        width: 72,
                        height: 32,
                        borderRadius: 30,
                      ))),
            );
          }
          return SearchResultCategoriesList(parentContext);
        },
      ),
    );
  }
}
