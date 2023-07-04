import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/usecases/auth/get_streaming_user_usecase.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ProfileUserNameSection extends StatelessWidget {
  const ProfileUserNameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: injector.get<GetStreamingUserUseCase>().call(),
      builder: ((_, value) {
        final user = value.data;
        if (user == null) {
          return const SizedBox.shrink();
        }
        return AppText.body500Font20(
          Directionality.of(context) == TextDirection.ltr?
            user.username.withAtPrefix:
            user.username.withAtSuffix,
          textAlign: TextAlign.center,
          autoSize: true,
          maxLines: 1,
        );
      }),
    );
  }
}
