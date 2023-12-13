import 'package:flutter/material.dart';
import 'package:qutell_training/widgets/custom_large_text.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            CustomLargeText(text: 'Categories'),
            Spacer(),
            Text(
              'SEE All',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        // PopularCourses(),
      ],
    );
  }
}
