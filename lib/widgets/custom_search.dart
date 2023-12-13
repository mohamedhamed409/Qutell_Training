import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, this.suffixIcon});
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search for ..',
          suffixIcon: suffixIcon),
    );
  }
}
