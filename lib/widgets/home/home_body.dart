import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:routine_app/widgets/home/check_bullet.dart';

import '../../config/constants.dart';
import '../../models/theme_data.dart';
import '../../providers/dark_theme_provider.dart';
import '../../screens/Home/home.dart';
import '../common/custom_button.dart';
import 'bullet_point.dart';

var size, height, width;

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    final themeChanger = Provider.of<ThemeChanger>(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Good\nEvening\nTaylor',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(letterSpacing: -0.2),
                ),
                Spacer(),
                Image(
                  image: AssetImage('assets/images/moon.png'),
                )
              ],
            ),
            const SizedBox(height: 25),
            Text(
              'Your Night time Routine',
              style: Theme.of(context).textTheme.headline4,
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
                            color: Theme.of(context).colorScheme.secondary,
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
                              color: Theme.of(context).primaryColorLight,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Column(
                              children: [
                                Text(
                                  'It’s almost 11:30 PM - time to get ready for bed!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3
                                      ?.copyWith(height: 1.4),
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
    );
  }
}
