// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:routine_app/widgets/dashboard/dahboard_body.dart';

import '../../config/constants.dart';
import '../../widgets/home/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  final pages = [
    const HomeBody(),
    const UnwindScreen(),
    const DashboardBody(),
    const LearnScreen(),
    const ConnectScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    const kNavbarTextStyle = TextStyle(
      fontSize: 10,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w700,
      color: kSecondaryColor,
    );
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: _buildNavbar(context, kNavbarTextStyle),
    );
  }

  Container _buildNavbar(BuildContext context, TextStyle kNavbarTextStyle) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 1,
                          color: pageIndex == 0
                              ? Theme.of(context).colorScheme.background
                              : Theme.of(context).primaryColor))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Home.svg',
                    width: 30,
                    height: 30,
                    color: pageIndex == 0
                        ? kSecondaryColor
                        : Theme.of(context).colorScheme.background,
                  ),
                  const SizedBox(height: 10),
                  Text('home'.toUpperCase(),
                      style: kNavbarTextStyle.copyWith(
                        color: pageIndex == 0
                            ? kSecondaryColor
                            : Theme.of(context).colorScheme.background,
                      ))
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                width: 1,
                color: pageIndex == 1
                    ? Theme.of(context).colorScheme.background
                    : kHeadingColor,
              ))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Unwind.svg',
                    width: 30,
                    height: 30,
                    color: pageIndex == 1
                        ? kSecondaryColor
                        : Theme.of(context).colorScheme.background,
                  ),
                  const SizedBox(height: 10),
                  Text('unwind'.toUpperCase(),
                      style: kNavbarTextStyle.copyWith(
                        color: pageIndex == 1
                            ? kSecondaryColor
                            : Theme.of(context).colorScheme.background,
                      ))
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 1,
                          color: pageIndex == 2
                              ? Theme.of(context).colorScheme.secondary
                              : kHeadingColor))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Sleep.svg',
                    width: 30,
                    height: 30,
                    color: pageIndex == 2
                        ? Theme.of(context).colorScheme.background
                        : kHeadingColor,
                  ),
                  const SizedBox(height: 10),
                  Text('sleep'.toUpperCase(),
                      style: kNavbarTextStyle.copyWith(
                        color: pageIndex == 2
                            ? Theme.of(context).colorScheme.background
                            : kHeadingColor,
                      ))
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 3;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                width: 1,
                color: pageIndex == 3
                    ? Theme.of(context).colorScheme.background
                    : kHeadingColor,
              ))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Learn.svg',
                    width: 30,
                    height: 30,
                    color: pageIndex == 3
                        ? Theme.of(context).colorScheme.background
                        : kHeadingColor,
                  ),
                  const SizedBox(height: 10),
                  Text('learn'.toUpperCase(),
                      style: kNavbarTextStyle.copyWith(
                        color: pageIndex == 3
                            ? Theme.of(context).colorScheme.background
                            : kHeadingColor,
                      ))
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 4;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                width: 1,
                color: pageIndex == 4
                    ? Theme.of(context).colorScheme.background
                    : kHeadingColor,
              ))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Connect.svg',
                    width: 30,
                    height: 30,
                    color: pageIndex == 4
                        ? Theme.of(context).colorScheme.background
                        : kHeadingColor,
                  ),
                  const SizedBox(height: 10),
                  Text('connect'.toUpperCase(),
                      style: kNavbarTextStyle.copyWith(
                        color: pageIndex == 4
                            ? Theme.of(context).colorScheme.background
                            : kHeadingColor,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UnwindScreen extends StatelessWidget {
  const UnwindScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Page2',
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
      ),
    );
  }
}

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'ConnectScreen',
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
      ),
    );
  }
}

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Learn Screen',
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
      ),
    );
  }
}
