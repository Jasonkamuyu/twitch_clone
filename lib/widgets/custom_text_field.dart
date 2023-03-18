import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:twitch_clone_tutorial/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
        color: buttonColor,
        width: 2,
      ))),
    );
  }
}
