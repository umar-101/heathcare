import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/constants.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            color: kBackgroundColor, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Circadian Cycle',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Winding Down',
                    style: TextStyle(
                        color: Color(0xFFBAB4FA),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/images/dashboardstar.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
