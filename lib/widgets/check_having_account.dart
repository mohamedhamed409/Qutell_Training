import 'package:flutter/material.dart';

import 'custom_small_text.dart';

class CheckHavingAccount extends StatelessWidget {
  const CheckHavingAccount(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.textForNavigation});
  final String text;
  final String textForNavigation;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSmallText(text: text),
        TextButton(onPressed: onPressed, child: Text(textForNavigation)),
      ],
    );
  }
}
