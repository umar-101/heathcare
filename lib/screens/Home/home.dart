// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import '../../config/constants.dart';
import '../../widgets/common/coloured_navbar.dart';
import '../../widgets/common/custom_button.dart';
import '../../widgets/home/bullet_point.dart';
import '../../widgets/home/check_bullet.dart';

var size, height, width;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  final pages = [
    // const Page1(),
    // const Page1(),
    // const Page3(),
    // const Page4(),
  ];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Good\nEvening\nTaylor',
                    style: TextStyle(
                        color: kHeadingColor,
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.2),
                  ),
                  Spacer(),
                  Image(
                    image: AssetImage('assets/images/moon.png'),
                  )
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                'Your Night time Routine',
                style: TextStyle(
                    fontSize: 20,
                    color: kSubHeadingColor,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        child: Column(
                          children: [
                            const CheckBullet(),
                            const CheckBullet(),
                            const CheckBullet(),
                            SvgPicture.asset(
                              'assets/icons/mooncheck.svg',
                              width: 22,
                              height: 22,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          const BulletPoint(),
                          const SizedBox(height: 10),
                          const BulletPoint(),
                          const SizedBox(height: 10),
                          const BulletPoint(),
                          const SizedBox(height: 10),
                          Container(
                            height: 180,
                            width: width,
                            decoration: BoxDecoration(
                                color: const Color(0xFF4939A8),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Column(
                                children: const [
                                  Text(
                                    'It’s almost 11:30 PM - time to get ready for bed!',
                                    style: TextStyle(
                                        fontSize: 20,
                                        height: 1.5,
                                        fontWeight: FontWeight.w700,
                                        color: kHeadingColor),
                                  ),
                                  Spacer(),
                                  CustomButton(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ColourNavBar(),
    );
  }
}
