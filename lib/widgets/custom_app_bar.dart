import 'package:flutter/material.dart';
import 'package:qutell_training/constants.dart';
import 'package:qutell_training/widgets/custom_material_button.dart';
import 'package:qutell_training/widgets/custom_small_text.dart';

import 'custom_large_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CustomLargeText(text: 'Hi, Alex'),
            const Spacer(),
            CustomMaterialButtonWithoutArrow(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Sign Out',
            ),
          ],
        ),
        const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          CustomSmallText(text: 'What would you like to learn today?'),
          CustomSmallText(text: 'Search below'),
        ]),
      ],
    );
  }
}
