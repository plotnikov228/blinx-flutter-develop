import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/login/cubit/login_cubit.dart';
import 'package:blinx/presentation/feature/login/ui/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///

import 'package:blinx/presentation/feature/home/you/you_page_logged_out/ui/register_screen.dart';

class AuthenticationScreen extends StatefulWidget {
  final bool inLogin;
  const AuthenticationScreen({
    super.key,
    this.inLogin=true
  });

  @override
  State<StatefulWidget> createState() => _AuthenticationScreen();

}

class _AuthenticationScreen extends State<AuthenticationScreen> {

  late bool inLogin;
  
  @override
  void initState() {
    super.initState();
    inLogin = widget.inLogin;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<LoginCubit>(),
      child: inLogin? LoginBody(changeState: (){
        setState((){
          inLogin = false;
        });
      })
      :RegisterBody(changeState: (){
        setState((){
          inLogin = true;
        });
      }),
    );
  }
}
