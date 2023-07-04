import 'package:blinx/domain/entities/component.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/app_flavor.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'static_video_component.dart';

class CarouselComponent extends StatefulWidget {
  const CarouselComponent({super.key, required this.component});

  final Component component;

  @override
  State<StatefulWidget> createState() => _CarouselComponent();
}

class _CarouselComponent extends State<CarouselComponent> {
  int selctedIndex = 0;

  List<Widget> dots() {
    var i = -1;

    return widget.component.data.media.map((e) {
      i++;
      return Container(
        height: 5,
        width: 5,
        margin: const EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
            color: selctedIndex == i
                ? const Color.fromRGBO(1, 148, 245, 1)
                : Colors.grey.withOpacity(0.55),
            shape: BoxShape.circle),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          SizedBox(
            height: 350,
            child: PageView.builder(
              itemCount: widget.component.data.media.length,
              onPageChanged: (int index) {
                setState(() {
                  selctedIndex = index;
                });
              },
               itemBuilder: (context, index) => widget
                      .component.data.media[index].videoId !=
                  null
              ? StaticVideoComponent(
                  videoId: widget.component.data.media[index].videoId ?? '',
                  ismuted: true,
                  autoPlay: true,
                )
              : Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: AppNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: (injector
                                      .get<AppFlavor>()
                                      .baseImageUrl +
                                  (widget.component.data.media[index].url ??
                                      ''))
                              .replaceAll('/author', ''),
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 68,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black,
                              ],
                            )),
                          )),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: AppText.body300(
                                  widget.component.data.media[index].caption ?? '',
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                                child: AppText.body500(
                                  widget.component.data.media[index].source ?? '',
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 12),
            child: Row(children: [
              const Spacer(),
              ...dots(),
              const Spacer(),
            ]),
          )
        ],
      ),
    );
  }
}
