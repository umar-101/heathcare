import 'package:flutter/material.dart';

import '../../config/constants.dart';

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text(
              'Stop alcohol',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Spacer(),
            Text(
              '9:00 PM',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
