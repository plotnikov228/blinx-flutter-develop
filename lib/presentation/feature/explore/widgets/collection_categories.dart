import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/explore/cubit/explore_all_categories_cubit.dart';
import 'package:blinx/presentation/feature/explore/widgets/categories_staggered_grid_view.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionCategoriesContent extends StatelessWidget {
  const CollectionCategoriesContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExploreAllCategoriesCubit, ExploreAllCategoriesState>(
      listenWhen: (_, current) => current.status.isFailure,
      listener: (context, state) {
        state.status.whenOrNull(
          failure: (error) => AppSnackBar.showErrorMessage(
            context,
            title: ResponseError.from(error).getErrorMessage(context),
          ),
        );
      },
      builder: (context, state) {

        if (!state.status.isSuccess) {
          final size = MediaQuery.of(context).size;
          return ShimmerBox(
            width: size.width,
            height: size.height,
            child: CategoriesStaggeredGridView(
              categoriesData: List.generate(
                8,
                (index) => Category.defaults(),
              ),
            ),
          );
        }

        return CategoriesStaggeredGridView(
          categoriesData: state.categoriesList,
        );
      },
    );
  }
}
