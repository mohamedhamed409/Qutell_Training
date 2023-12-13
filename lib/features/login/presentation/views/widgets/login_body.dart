import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/core/utils/routes.dart';
import 'package:qutell_training/features/login/presentation/view_model/login_cubit.dart';
import 'package:qutell_training/features/login/presentation/view_model/login_states.dart';
import 'package:qutell_training/widgets/custom_contacts.dart';
import 'package:qutell_training/widgets/custom_image.dart';
import 'package:qutell_training/widgets/custom_large_text.dart';
import 'package:qutell_training/widgets/custom_material_button.dart';

import 'package:qutell_training/widgets/custom_small_text.dart';
import 'package:qutell_training/widgets/custom_textformfield.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(
      builder: (context, state) {
        final cubit = LoginCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: SingleChildScrollView(
            child: Form(
              key: cubit.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomImage(),
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomLargeText(
                    text: 'Let\'s Sign In.!',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomSmallText(
                      text: 'Login to Your Account to Continue your Courses'),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    controller: cubit.emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is Required';
                      }
                      return null;
                    },
                    icon: Icons.email_outlined,
                    hint: 'Email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    controller: cubit.passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is Required';
                      }
                      return null;
                    },
                    icon: Icons.lock_outline,
                    hint: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  state is LoginLoadingStates
                      ? const Center(child: CircularProgressIndicator())
                      : CustomMaterialButton(
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {
                              LoginCubit.get(context).userLogin(
                                  email: cubit.emailController.text,
                                  password: cubit.passwordController.text);
                              Navigator.pushNamed(context, AppRoutes.home);
                            } else {
                              print('Error');
                            }
                          },
                          text: 'Sign In'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: CustomSmallText(text: 'Or Continue With'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomContacts(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const CustomSmallText(text: 'Don\'t have and account? '),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.register);
                        },
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
