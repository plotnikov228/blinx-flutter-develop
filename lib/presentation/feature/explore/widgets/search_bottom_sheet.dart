import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/explore/cubit/explore_search_cubit.dart';
import 'package:blinx/presentation/feature/explore/widgets/radio_item.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBottomSheet extends StatelessWidget {
  const SearchBottomSheet(this.parentContext, {super.key});

  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.explore;

    return BlocBuilder<ExploreSearchCubit, ExploreSearchState>(
      bloc: BlocProvider.of<ExploreSearchCubit>(parentContext),
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 16),
                child: AppText.body500(
                  i18n.sortBy,
                  fontSize: 18,
                ),
              ),
              RadioItem(
                title: i18n.newestToOldest,
                onChange: (int value) {
                  parentContext.read<ExploreSearchCubit>().sortBy(value);
                },
                groupValue: state.sortByType.index,
                value: SortBy.newestToOldest.index,
              ),
              RadioItem(
                title: i18n.oldestToNewest,
                onChange: (int value) {
                  parentContext.read<ExploreSearchCubit>().sortBy(value);
                },
                groupValue: state.sortByType.index,
                value: SortBy.oldestToNewest.index,
              ),
            ],
          ),
        );
      },
    );
  }
}
