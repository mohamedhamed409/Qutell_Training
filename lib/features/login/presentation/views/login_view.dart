import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/features/login/presentation/view_model/login_cubit.dart';
import 'package:qutell_training/features/login/presentation/views/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        body: LoginBody(),
      ),
    );
  }
}
