import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:math';

class MyVideoProgressIndicator extends StatefulWidget {
  const MyVideoProgressIndicator(this.videoLength,this.controller,{Key? key,this.beTrans=false}) : super(key: key);
  final VideoPlayerController controller;
  final int videoLength;
  final bool beTrans;

  @override
  State<StatefulWidget> createState() => _MyVideoProgressIndicator();
}

class _MyVideoProgressIndicator extends State<MyVideoProgressIndicator> {

  double _sliderValueWhileDragging = 0;
  bool _isSliding = false;

  Widget videoTimerDisplay(double currentPosition, double videoLength, double screenWidth){
    final currentTime = currentPosition*videoLength/screenWidth;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(convertToTimeFormat(currentTime),
          style: const TextStyle(
            color: Colors.white, 
            fontSize: 20.0, 
            fontWeight: FontWeight.w500,
          ),
        ),
        Text('   /   ',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8), 
            fontSize: 13.0, 
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(convertToTimeFormat(videoLength),
          style: TextStyle(
            color: Colors.white.withOpacity(0.8), 
            fontSize: 20.0, 
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  String convertToTimeFormat(double timeInMs){
    var totalSeconds = (timeInMs / 1000).round();
    
    var minutes = totalSeconds ~/ 60;
    var seconds = totalSeconds % 60;
    
    var formattedMinutes = minutes.toString().padLeft(2, '0');
    var formattedSeconds = seconds.toString().padLeft(2, '0');
    
    return '$formattedMinutes:$formattedSeconds';
  }


  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    const barHeight = 8.0;
    const smallBarHeight = 3.0;

    return ValueListenableBuilder<VideoPlayerValue>(
      valueListenable: widget.controller,
      builder: (context, value, child) {

        final videoLength = max(value.duration.inMilliseconds.toDouble(),100.0);

        try {
          return Column(
            children: [
              Center(child: _isSliding?videoTimerDisplay(_sliderValueWhileDragging, videoLength, screenWidth ): const SizedBox()),
              SizedBox(
                height: 50,
                width: screenWidth,
                child:  GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onPanStart: (_) {
                    setState(() {
                      _isSliding = true;
                      _sliderValueWhileDragging = value.position.inMilliseconds.toDouble()*screenWidth/videoLength;
                    });
                  },
                  onPanEnd: (details) {
                    setState(() {
                      _isSliding = false;
                      final toGoTo = _sliderValueWhileDragging * videoLength / screenWidth;
                      widget.controller.seekTo(Duration(milliseconds: toGoTo.toInt()));
                    });
                  },
                  onPanUpdate: (DragUpdateDetails details) {
                    setState(() {
                      _sliderValueWhileDragging += details.delta.dx;

                      if(_sliderValueWhileDragging<=0) {
                        _sliderValueWhileDragging=0;
                      }else if(_sliderValueWhileDragging>=screenWidth) {
                        _sliderValueWhileDragging=screenWidth;
                      }
                    });
                  },
                  child: SizedBox(
                    height: barHeight,
                    width: screenWidth,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        width: screenWidth,
                        height: _isSliding?barHeight:smallBarHeight,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Stack(
                            children: [
                              Container(
                                width: _isSliding?_sliderValueWhileDragging:value.position.inMilliseconds.toDouble()*screenWidth/videoLength,
                                color: Colors.grey,
                              ),
                              Positioned(
                                right: -4,
                                child: _isSliding?Container(
                                  width: 8.0,
                                  height: 8.0,
                                  color: Colors.white,
                                ):const SizedBox(),
                              ),
                            ],
                          ),
                        ) 
                      ),
                    ),
                  )
                  ),
              ),
            ],
          );
        } catch (e) {
          return const SizedBox();
        }
      },
    );
  }
}
