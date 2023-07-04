import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/you_page_logged_in.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_out/you_page_logged_out.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class YouPage extends StatefulWidget {
  const YouPage({super.key});

  @override
  State<YouPage> createState() => _YouPageState();
}

class _YouPageState extends State<YouPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: injector.get<UserPreferences>().getStreamingUser(),
      builder: (_, value) {
        final user = value.data;

        if(user == null||user.email.value=='') {
          return const YouPageLoggedOut();
        }
        return const YouPageLoggedIn();
      },
    );
  }
}
