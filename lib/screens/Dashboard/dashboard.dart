import 'package:flutter/material.dart';

import 'package:routine_app/widgets/common/coloured_navbar.dart';

import '../../widgets/dashboard/dahboard_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardBody(),
      bottomNavigationBar: ColourNavBar(),
    );
  }
}
