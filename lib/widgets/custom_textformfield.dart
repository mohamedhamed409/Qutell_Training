import 'package:flutter/material.dart';

import '../features/login/presentation/view_model/login_cubit.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    required this.icon,
    this.isPassword = false,
    required this.hint,
    this.validator,
  });
  final TextEditingController? controller;
  final IconData icon;
  final bool isPassword;
  final String hint;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    var cubit = LoginCubit.get(context);
    return TextFormField(
      controller: controller,
      obscureText: isPassword ? cubit.obscureText : false,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        focusedBorder: const OutlineInputBorder(),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(icon),
        suffixIcon: isPassword
            ? GestureDetector(
                onTap: () => cubit.changePasswordVisibility(),
                child: Icon(
                    cubit.isVisiable ? Icons.visibility : Icons.visibility_off))
            : null,
      ),
      validator: validator,
    );
  }
}
