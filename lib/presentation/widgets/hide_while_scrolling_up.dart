import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HideWhileScrollingUp extends StatefulWidget {
  const HideWhileScrollingUp({
    Key? key,
    required this.scrollController,
    required this.child,
    this.childExpandedheight = 100,
  }) : super(key: key);

  final ScrollController scrollController;
  final Widget child;
  final double childExpandedheight;

  @override
  State<HideWhileScrollingUp> createState() => _HideWhileScrollingUpState();
}

class _HideWhileScrollingUpState extends State<HideWhileScrollingUp> {
  bool isHidden = false;

  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(() {
      final controller = widget.scrollController;

      if (controller.position.userScrollDirection == ScrollDirection.forward) {
        setState(() {
          isHidden = false;
        });
      }
      if (controller.position.userScrollDirection == ScrollDirection.reverse) {
        setState(() {
          isHidden = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 200),
        height: isHidden ? 0 : widget.childExpandedheight,
        child: widget.child,
      ),
    );
  }
}
