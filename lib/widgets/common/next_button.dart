// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../config/constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(60)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Next",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kBarBackColor)),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_forward,
              size: 22,
              color: kBarBackColor,
            )
          ],
        ),
      ),
    );
  }
}
