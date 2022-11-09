import 'package:flutter/material.dart';

import '../../config/constants.dart';

class CheckBullet extends StatelessWidget {
  const CheckBullet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.check_circle_outline,
          size: 24,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Container(
            width: 1,
            height: 25,
            color: Theme.of(context).colorScheme.secondary,
          ),
        )
      ],
    );
  }
}
