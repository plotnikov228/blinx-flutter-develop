import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:blinx/presentation/feature/home/you/cubit/collection_cubit.dart';

import 'package:blinx/presentation/widgets/app_button.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCollectionDialogContent extends StatelessWidget {
  const AddCollectionDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final i18n = context.localization.collection;
    return Center(
      child: Container(
          // color: Colors.red,
          decoration: BoxDecoration(
            color: context.colors.bottomSheetBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 360,
          height: 260,
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              child: AppText.body500(
                            i18n.addCollectionContentHeadline,
                            fontSize: 16.0,
                          )),
                        ),
                        SizedBox(
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            constraints: const BoxConstraints.tightFor(
                              width: 24.0,
                              height: 24.0,
                            ),
                            splashRadius: 1,
                            splashColor: Colors.transparent,
                            icon: Assets.icons.close.svg(width: 20),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Align(
                      alignment: Directionality.of(context) == TextDirection.ltr
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Text(i18n.giveYourCollectionAName),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: TextFormField(
                      controller: textController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
                        filled: true,
                        // Todo: modify error widget here
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 126, 126, 126)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 126, 126, 126)),
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: const BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 126, 126, 126))),
                        hintText: 'Name',
                        hintStyle: AppTextStyles.title.copyWith(
                          fontSize: 15,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    ),
                  ),
                  AppButton.rounded(
                      title: i18n.createCollection,
                      onPressed: () {
                        context
                            .read<CollectionCubit>()
                            .createCollection(textController.text);
                        context.router.pop();
                      })
                ],
              ),
            ),
          )),
    );
  }
}
