import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/features/register/presentation/view_model/register_cubit.dart';
import 'package:qutell_training/features/register/presentation/views/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        body: RegisterBody(),
      ),
    );
  }
}
