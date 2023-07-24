import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget Function(Color) child;
  final double width;
  final double height;
  final bool isActive;
  const ActionButtonWidget({super.key, required this.onPressed, required this.child, required this.width,  this.height = 40,  this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(onPressed: onPressed, style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            color: Colors.white
          )
        ),elevation: 0,
        backgroundColor: isActive ? Colors.white : Colors.transparent

      ), child: child(isActive ? Colors.black : Colors.white),),
    );
  }
}
