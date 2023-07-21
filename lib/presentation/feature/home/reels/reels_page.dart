import 'package:blinx/presentation/feature/home/reels/ui/reels_grid_view_body.dart';
import 'package:flutter/material.dart';

import '../../../widgets/app_bar/blinx_app_bar.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const ReelsGridViewBody(),
        SafeArea(child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: BlinxAppBar.home(backgroundColor: Colors.transparent,),
        ))
      ],
    );
  }
}
