import 'package:flutter/material.dart';
import 'package:qutell_training/core/utils/styles.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton(
      {super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: ColorStyles.buttonColor,
      onPressed: onPressed,
      child: Row(children: [
        const Spacer(
          flex: 2,
        ),
        Text(
          text,
          style: TextStyles.textInButton,
        ),
        const Spacer(),
        const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.arrow_forward),
        )
      ]),
    );
  }
}
