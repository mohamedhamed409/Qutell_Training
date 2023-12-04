import 'package:flutter/material.dart';
import 'package:qutell_training/widgets/custom_contacts.dart';
import 'package:qutell_training/widgets/custom_small_text.dart';

import 'custom_image.dart';
import 'custom_large_text.dart';
import 'custom_material_button.dart';
import 'custom_textformfield.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const CustomTextFormField(
              icon: Icons.email_outlined,
              hint: 'Email',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              icon: Icons.lock_outline,
              hint: 'Password',
              isPassword: true,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (val) {}),
                const Spacer(),
                const CustomSmallText(text: 'Forgot Password'),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            CustomMaterialButton(onPressed: () {}, text: 'Sign In'),
            const SizedBox(
              height: 20,
            ),
            const Center(child: CustomSmallText(text: 'Or Continue With'),),
            const SizedBox(
              height: 20,
            ),
            const CustomContacts(),
          ],
        ),
      ),
    );
  }
}
