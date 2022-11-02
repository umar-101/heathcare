import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:routine_app/widgets/common/coloured_navbar.dart';

import '../../config/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Text(
                'Sleep Dashboard',
                style: Theme.of(context).textTheme.headline2,
              ),
              DashboardContainer(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
              Container(
                height: 310,
                child: Container(
                  color: Colors.orange,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: kBackgroundColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircularPercentIndicator(
                                  radius: 50.0,
                                  lineWidth: 10,
                                  percent: 0.70,
                                  circularStrokeCap: CircularStrokeCap.round,
                                  restartAnimation: true,
                                  backgroundColor: kBarBackColor,
                                  center: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '7.5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 32,
                                            color: kSecondaryColor),
                                      ),
                                      Text(
                                        'HRS',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: kSecondaryColor),
                                      )
                                    ],
                                  ),
                                  progressColor: kSecondaryColor,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Target: 8 HRS',
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ]),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sleep Pressure',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              SizedBox(height: 15),
                              Container(
                                color: Colors.orange,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: -1,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          height: 60,
                                          width: 115,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            backgroundColor: kBarBackColor,
                                            color: Color(0xFF9ACCEF),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'High',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 9,
                                              color: Color(0XFFFFFCF3)),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Optimal',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 9,
                                              color: Color(0XFFFFFCF3)),
                                        ),
                                        Text(
                                          'Low',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 9,
                                              color: Color(0XFFFFFCF3)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              DashboardContainer(
                flex: 1,
                child: Row(
                  children: const [Text('Container4')],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ColourNavBar(),
    );
  }
}

class DashboardContainer extends StatelessWidget {
  final int flex;
  final Widget child;
  const DashboardContainer({
    Key? key,
    required this.flex,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(15)),
            child: child,
          ),
        ));
  }
}
