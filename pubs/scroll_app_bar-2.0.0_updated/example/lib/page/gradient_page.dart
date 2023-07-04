import 'package:flutter/material.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

class GradientPage extends StatelessWidget {
  GradientPage({Key? key}) : super(key: key);

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScrollAppBar(
        controller: controller, // Note the controller here
        title: const Text("Gradient Background"),
        backgroundGradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.red,
            Colors.green,
            Colors.blue,
          ],
        ),
      ),
      body: ListView(
        controller: controller, // Controller is also here
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 2,
          ),
        ],
      ),
    );
  }
}
