import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class RadioItem extends StatelessWidget {
  const RadioItem({
    super.key,
    required this.groupValue,
    required this.value,
    required this.onChange,
    required this.title,
  });

  final String title;
  final int groupValue;
  final int value;
  final Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onChange(value),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 17),
          child: Row(
            children: [
              value == groupValue
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: 24,
                        height: 24,
                        color: context.colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              color: context.colors.primary,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Container(
                                    color: context.colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: context.colors.blue,
                        width: 3
                      )
                    ),
                  ),
              const SizedBox(width: 24),
              AppText.body500(
                title,
                fontSize: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
