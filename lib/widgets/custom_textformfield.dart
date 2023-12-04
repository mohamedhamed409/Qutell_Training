import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    required this.icon,
    this.isPassword = false,
    required this.hint,
  });
  final TextEditingController? controller;
  final IconData icon;
  final bool isPassword;
  final String hint;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisiable = false, obscureText = true;

  void changePasswordVisibility() {
    isVisiable = !isVisiable;
    obscureText = !obscureText;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText:widget. isPassword?obscureText:false,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hint,
        focusedBorder: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(widget.icon),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () => changePasswordVisibility(),
                child:
                    Icon(isVisiable ? Icons.visibility : Icons.visibility_off))
            : null,
      ),
    );
  }
}
