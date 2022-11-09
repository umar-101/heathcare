import 'package:flutter/material.dart';

import 'graph_container.dart';
import 'header_container.dart';
import 'progress_containers.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
