import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/feature/moments/widgets/moments_header/moments_avatar_tile.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MomentsHeaderSection extends StatelessWidget {
  const MomentsHeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SafeArea(
          child: Directionality(
            textDirection: injector.get<AppPreferences>().getLanguage=='ar'?TextDirection.rtl:TextDirection.ltr,
            child: Container(
              height: 62,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(context.localization.moments.moments,style: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400),),

                  const Spacer(),

                  IconButton(
                    onPressed: context.popRoute,
                    icon: Assets.icons.close.svg(
                      color: context.colors.white,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),

        SizedBox(
          height: 200,
          child: BlocBuilder<MomentsCubit, MomentsState>(
            builder: (context, state) {

              if (state.status.isLoading) {
                return ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, __) => MomentsAvatarTile.shimmer(),
                );
              }
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.storytellers.length,
                itemBuilder: (context, index) {
                  final item = state.storytellers[index];
                  return GestureDetector(
                    onTap: () => context.read<MomentsCubit>().selectStorytellerMoment(item),
                    child: MomentsAvatarTile(
                      moment: item,
                      isActive: item.id == state.selectedMoment!.id,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
