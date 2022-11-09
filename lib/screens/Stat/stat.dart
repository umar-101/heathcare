import 'package:flutter/material.dart';
import 'package:routine_app/config/constants.dart';
import 'package:routine_app/screens/Home/home.dart';

var size, height, width;

class StatScreen extends StatelessWidget {
  const StatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: kHeadingColor,
        appBar: AppBar(
          title: const Text('Thursday'),
          backgroundColor: kBackgroundColor,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: kHeadingColor,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.exit_to_app,
                  color: kHeadingColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: kHeadingColor,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 24,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'time asleep'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    const Text('Edit Goal',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        right: 3,
                        bottom: 4,
                      ),
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Text(
                      'hr',
                      style: TextStyle(fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 3, left: 5, bottom: 4),
                      child: Text(
                        '39',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Text(
                      'min',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Icon(Icons.star)
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Icon(Icons.dark_mode),
                    const SizedBox(width: 5),
                    Text(
                      'sleep stages'.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    const Text('Learn more',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                Container(
                  height: 220,
                  width: width,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(25)),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                  child: const TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.directions_car)),
                      Tab(icon: Icon(Icons.directions_transit)),
                      Tab(icon: Icon(Icons.directions_bike)),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: const TabBarView(
                    children: [
                      Icon(Icons.directions_car),
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
