import 'package:blinx/domain/entities/storyteller_moments.dart';
import 'package:blinx/presentation/feature/moments/widgets/moments_header/active_avatar_border_effect.dart';
import 'package:blinx/presentation/resources/app_color_constants.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class MomentsAvatarTile extends StatelessWidget {
  const MomentsAvatarTile({
    Key? key,
    required this.moment,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;
  final StorytellerMoments moment;

  factory MomentsAvatarTile.shimmer() {
    return MomentsAvatarTile(
      isActive: false,
      moment: StorytellerMoments.random().copyWith(
        moments: [],
        storyTellerName: '',
        storyTellerAvatarUrl: '',
      ),
    );
  }

  bool get sawByCurrentUser => moment.seenByCurrentUser && !isActive;

  @override
  Widget build(BuildContext context) {
    final avatarSize = Size.square(isActive ? 56 : 62);

    return Column(
      children: [
        SizedBox(
          height: 78,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              ActiveAvaterBorderEffect(
                isActive: isActive,
                child: Container(
                  width: avatarSize.width,
                  height: avatarSize.height,
                  padding: EdgeInsets.all(isActive ? 0 : 5),
                  decoration: BoxDecoration(
                    border: GradientBoxBorder(
                      gradient: sawByCurrentUser
                          ? AppColorConstants.greyGradient
                          : AppColorConstants.orangeGradient,
                      width: isActive ? 6 : 2,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: AppNetworkImage(
                      imageUrl: moment.storyTellerAvatarUrl,
                      height: avatarSize.height,
                      width: avatarSize.width,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: AppText.body(
            moment.storyTellerName,
            maxLines: 1,
            color: Colors.white,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipOval(
            child: Container(
              height: 6,
              width: 6,
              color: isActive ? Colors.white : Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
