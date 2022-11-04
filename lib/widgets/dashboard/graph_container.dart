import 'package:flutter/material.dart';
import 'package:routine_app/widgets/dashboard/linechart.dart';

import '../../config/constants.dart';

class GraphContainer extends StatelessWidget {
  const GraphContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              color: kBackgroundColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: const [LineChartSample2()],
          ),
        ),
      ),
    );
  }
}
