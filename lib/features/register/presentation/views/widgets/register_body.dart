import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/features/login/presentation/view_model/login_states.dart';
import 'package:qutell_training/features/login/presentation/views/login_view.dart';
import 'package:qutell_training/features/register/presentation/view_model/register_cubit.dart';
import 'package:qutell_training/features/register/presentation/view_model/register_states.dart';
import 'package:qutell_training/widgets/custom_contacts.dart';
import 'package:qutell_training/widgets/custom_image.dart';
import 'package:qutell_training/widgets/custom_large_text.dart';
import 'package:qutell_training/widgets/custom_material_button.dart';
import 'package:qutell_training/widgets/custom_small_text.dart';
import 'package:qutell_training/widgets/custom_textformfield.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterStates>(
      
 
        //  if (state is RegisterSuccessState) {
        //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //     content: Text('Sign Up Successfully'),
        //   ));
        //   Navigator.pushNamed(context, AppRoutes.home);
        // } 
      
      builder: (BuildContext context, RegisterStates state) {
        
        return state is LoginSucessStates?
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomImage(),
                    const SizedBox(
                      height: 50,
                    ),
                    const CustomLargeText(
                      text: 'Getting Started.!',
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
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is Required';
                        }
                        return null;
                      },
                      icon: Icons.email_outlined,
                      hint: 'Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      controller: emailController,
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
                      controller: passwordController,
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
                    CustomTextFormField(
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password Confirmation is Required';
                        }
                        return null;
                      },
                      icon: Icons.lock_outline,
                      hint: 'Re-Write Password',
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    CustomMaterialButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            RegisterCubit.get(context).userRegister(
                                email: emailController.text,
                                password: passwordController.text,
                                name: nameController.text,
                                confirmPassword:
                                    confirmPasswordController.text);
                          }
                        },
                        text: 'Sign up'),
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
                        const CustomSmallText(
                            text: 'Already have and account? '),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginView()));
                          },
                          child: const Text(
                            'Login now',
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
          ):const Center(child: CircularProgressIndicator(),)
          ;
        
      },
    );
  }
}
