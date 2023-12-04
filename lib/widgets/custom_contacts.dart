import 'package:flutter/material.dart';
import 'package:qutell_training/core/utils/app_images.dart';

class CustomContacts extends StatelessWidget {
  const CustomContacts({super.key, this.onGoogleTap, this.onAppleTap});
  final void Function()? onGoogleTap;
  final void Function()? onAppleTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: onGoogleTap,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Image.asset(AppImages.google),
            )),
        GestureDetector(
            onTap: onAppleTap,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Image.asset(AppImages.apple),
            ))
      ],
    );
  }
}
