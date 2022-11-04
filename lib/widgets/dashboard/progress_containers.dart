import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../config/constants.dart';

class ProgressContainers extends StatelessWidget {
  const ProgressContainers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Container(
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
            SizedBox(width: 15),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: kBackgroundColor,
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
                      // color: Colors.orange,
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
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Text(
                                'High',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9,
                                    color: Color(0XFFFFFCF3)),
                              ),
                              SizedBox(height: 40),
                              Text(
                                'Optimal',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9,
                                    color: Color(0XFFFFFCF3)),
                              ),
                              SizedBox(height: 40),
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
    );
  }
}
