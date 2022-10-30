import 'package:flutter/material.dart';

import '../../../constants.dart';

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text(
              'Stop alcohol',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: kHeadingColor.withOpacity(0.6)),
            ),
            const Spacer(),
            Text(
              '9:00 PM',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: kHeadingColor.withOpacity(0.6)),
            ),
          ],
        ),
      ),
    );
  }
}
