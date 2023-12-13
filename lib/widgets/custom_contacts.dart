import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomContacts extends StatelessWidget {
  const CustomContacts({super.key, this.onGoogleTap, this.onAppleTap});
  final void Function()? onGoogleTap;
  final void Function()? onAppleTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: onGoogleTap,
            child: const CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Icon(FontAwesomeIcons.google),
            )),
        GestureDetector(
            onTap: onAppleTap,
            child: const CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Icon(FontAwesomeIcons.apple),
            )),
      ],
    );
  }
}
