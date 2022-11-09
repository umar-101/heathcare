import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/constants.dart';

class ColourNavBar extends StatefulWidget {
  const ColourNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<ColourNavBar> createState() => _ColourNavBarState();
}

class _ColourNavBarState extends State<ColourNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //   height: 100,
        //   decoration: const BoxDecoration(
        //     color: kPrimaryLightColor,
        //     borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(20),
        //       topRight: Radius.circular(20),
        //     ),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       BottomNavItem(
        //         title: 'home',
        //         iconString: 'assets/icons/Home.svg',
        //         textColor: kSecondaryColor,
        //         iconColor: kSecondaryColor,
        //         outerBorder: kSecondaryColor,
        //         press: () {},
        //       ),
        //       BottomNavItem(
        //         title: 'unwind',
        //         iconString: 'assets/icons/Unwind.svg',
        //         textColor: const Color(0xFFFFFBF3),
        //         iconColor: const Color(0xFFFFFBF3),
        //         outerBorder: kPrimaryLightColor,
        //         press: () {},
        //       ),
        //       BottomNavItem(
        //         title: 'sleep',
        //         iconString: 'assets/icons/Sleep.svg',
        //         textColor: const Color(0xFFFFFBF3),
        //         iconColor: const Color(0xFFFFFBF3),
        //         outerBorder: kPrimaryLightColor,
        //         press: () {},
        //       ),
        //       BottomNavItem(
        //         title: 'learn',
        //         iconString: 'assets/icons/Learn.svg',
        //         textColor: const Color(0xFFFFFBF3),
        //         iconColor: const Color(0xFFFFFBF3),
        //         outerBorder: kPrimaryLightColor,
        //         press: () {},
        //       ),
        //       BottomNavItem(
        //         title: 'connect',
        //         iconString: 'assets/icons/Connect.svg',
        //         textColor: const Color(0xFFFFFBF3),
        //         iconColor: const Color(0xFFFFFBF3),
        //         outerBorder: kPrimaryLightColor,
        //         press: () {},
        //       )
        //     ],
        //   ),
        );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final String iconString;
  final Color textColor;
  final VoidCallback press;
  final Color iconColor;
  final Color outerBorder;
  const BottomNavItem({
    Key? key,
    required this.title,
    required this.iconString,
    required this.textColor,
    required this.press,
    required this.iconColor,
    required this.outerBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: outerBorder))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconString,
              width: 30,
              height: 30,
              color: iconColor,
            ),
            const SizedBox(height: 10),
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 10,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
