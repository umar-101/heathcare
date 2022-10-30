import 'package:flutter/material.dart';

import '../../../constants.dart';

class CheckBullet extends StatelessWidget {
  const CheckBullet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.check_circle_outline,
          size: 24,
          color: kSecondaryColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Container(
            width: 1,
            height: 25,
            color: kSecondaryColor,
          ),
        )
      ],
    );
  }
}
