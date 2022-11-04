import 'package:flutter/material.dart';

import 'package:routine_app/widgets/common/coloured_navbar.dart';

import '../../widgets/dashboard/graph_container.dart';
import '../../widgets/dashboard/header_container.dart';
import '../../widgets/dashboard/progress_containers.dart';

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
              HeaderContainer(),
              ProgressContainers(),
              GraphContainer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ColourNavBar(),
    );
  }
}
