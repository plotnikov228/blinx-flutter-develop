import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/you/cubit/collection_cubit.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/ui/bottom_sheet_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionSheetContent extends StatelessWidget {
  const CollectionSheetContent(
      {Key? key, required this.idCollection, this.hideLink = true})
      : super(key: key);
  final int idCollection;
  final bool hideLink;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization;
    return Column(
      children: [
        if (hideLink) ...[
          BottomSheetListTile(
            text: i18n.defaultSection.share,
            svgPath: Assets.icons.share.path,
            onTap: () {},
          ),
          BottomSheetListTile(
            text: i18n.defaultSection.copyLink,
            svgPath: Assets.icons.copyLink.path,
            onTap: () {},
          ),
        ],
        BottomSheetListTile(
          text: i18n.collection.deleteCollection,
          svgPath: Assets.icons.delete.path,
          onTap: () {
            context.read<CollectionCubit>().deleteCollection(idCollection);
            context.router.pop();
          },
        ),
      ],
    );
  }
}
