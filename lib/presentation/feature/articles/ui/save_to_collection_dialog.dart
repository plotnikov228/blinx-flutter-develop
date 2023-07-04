import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/you/cubit/collection_cubit.dart';
import 'package:blinx/presentation/feature/home/you/cubit/collection_state.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/collection/ui/add_collection_bottom_sheet.dart/add_collection_bottom_sheet_content.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_dialog_list_title.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveToCollectionDialog extends StatelessWidget {
  const SaveToCollectionDialog({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    context.read<CollectionCubit>().getCollection();
    final i18n = context.localization.collection;
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: context.colors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      content: BlocBuilder<CollectionCubit, CollectionState>(
          builder: (context, state) {
        return SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.body500(
                      i18n.collection.toUpperCase(),
                      fontSize: 12,
                      letterSpacing: 1.3,
                      color: context.colors.black,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: state.collections.length,
                  itemBuilder: (context, index) {
                    return state.status.isSuccess
                        ? AppDialogListTile(
                            title: state.collections[index]!.name,
                            subtitle:
                                '${state.collections[index]!.articles == null ? 0 : state.collections[index]!.articles!.length} items',
                            isChecked:
                                state.collections[index]!.articles == null
                                    ? false
                                    : state.collections[index]!.articles!.contains(article.id),
                            onTap: () {
                              for (final collection in state.collections) {
                                if (collection!.articles!.isNotEmpty) {
                                  try {
                                    // collection.articles!.remove(article.id);
                                    context.read<CollectionCubit>().deleteArticleFromCollection(collection.id!, article.path);
                                  } catch (err) {}
                                }
                              }
                              if (state.collections[index]!.articles != null) {
                                if (state.collections[index]!.articles!
                                    .contains(article.id)) {
                                  context
                                      .read<CollectionCubit>()
                                      .deleteArticleFromCollection(
                                          state.collections[index]!.id!,
                                          article.path);
                                } else {
                                  context
                                      .read<CollectionCubit>()
                                      .addArticleToCollection(
                                          state.collections[index]!.id!,
                                          article.path);
                                }
                              }
                            },
                          )
                        : const SizedBox.shrink();
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  AppBottomSheet.showSheet(
                    context,
                    sheetTitle: context
                        .localization.collection.addCollectionContentHeadline,
                    showCloseIcon: true,
                    child: const AddCollectionBottomSheetContent(),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Assets.icons.addBlueSquare.svg(),
                      const SizedBox(width: 12),
                      AppText.body500(
                        i18n.addNewCollection,
                        fontSize: 12,
                        color: context.colors.blue,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
