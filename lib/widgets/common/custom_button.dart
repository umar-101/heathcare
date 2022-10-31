// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../config/constants.dart';

var size, height, width;

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(44)),
      child: const Center(
          child: Text(
        "I’m on it!",
        style: TextStyle(
            color: Color(0xFF251c5E),
            fontSize: 16,
            fontWeight: FontWeight.w700),
      )),
    );
  }
}
