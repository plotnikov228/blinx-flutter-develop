import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    Key? key,
    required this.imageurl,
    required this.type,
    required this.title,
    required this.time,
    this.isSeen = false,
    this.onNotificationTileTap,
  }) : super(key: key);

  final String imageurl;
  final String type;
  final String title;
  final DateTime time;
  final bool isSeen;
  final VoidCallback? onNotificationTileTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: onNotificationTileTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSeen ? context.colors.background : context.colors.darkGrey,
            border: !isSeen
                ? null
                : Border.all(
                    width: 2.0,
                    color: context.colors.darkGrey,
                  ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          height: 128,
          child: Row(
            children: [
              SizedBox(
                width: 128,
                height: 128,
                child: ClipRRect(
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart: Radius.circular(4),
                    bottomStart: Radius.circular(4),
                  ),
                  child: AppNetworkImage(
                    imageUrl: imageurl,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 18.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body700Font13(
                        type,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 14),
                      AppText.body(
                        title,
                        fontSize: 16,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      AppText.body(
                        Jiffy(time, 'yyyy-MM-dd').fromNow(),
                        fontSize: 12,
                        color: context.colors.lightText,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
