import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget
{
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 50),
      
      child:  Divider(),
    );
  }
}
