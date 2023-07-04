import 'package:auto_route/auto_route.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/you/cubit/collection_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCollectionBottomSheetContent extends StatelessWidget {
  const AddCollectionBottomSheetContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.collection;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          TextFormField(
            onFieldSubmitted: (text) {
              context.read<CollectionCubit>().createCollection(text);
              context.router.pop();
            },
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: i18n.typeAName,
              border: InputBorder.none,
            ),
            cursorColor: context.colors.text,
            style: AppTextStyles.titleBold22,
          ),
        ],
      ),
    );
  }
}
