import 'package:flutter/material.dart';
import 'package:taskez/values/values.dart';
import 'package:taskez/widgets/dashboard/daily_goal_card.dart';
import 'package:taskez/widgets/dashboard/productivity_chart.dart';

class DashboardProductivity extends StatelessWidget {
  const DashboardProductivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DailyGoalCard(),
        AppSpaces.verticalSpace20,
        ProductivityChart()
      ],
    );
  }
}
