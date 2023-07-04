import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/login/cubit/login_cubit.dart';
import 'package:blinx/presentation/feature/login/ui/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///

import '../register/register_screen.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginScreen();

}

class _LoginScreen extends State<LoginScreen> {

  bool inLogin = true;

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
