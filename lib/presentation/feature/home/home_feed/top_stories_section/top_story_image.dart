import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class TopStoryImage extends StatelessWidget {
  const TopStoryImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: 194,
          width: 160,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.bottomCenter,
                      end: FractionalOffset.topCenter,
                      stops: const [0, .5, 1.0],
                      colors: [
                        context.colors.black.withOpacity(.90),
                        Colors.transparent,
                        context.colors.black.withOpacity(.4),
                      ],
                    ),
                  ),
                  child: AppNetworkImage(
                    imageUrl: imageUrl,
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
