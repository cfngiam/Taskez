import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskez/Values/values.dart';

import 'package:taskez/widgets/Search/active_task_card.dart';
import 'package:taskez/widgets/Search/inactive_task_card.dart';

class SearchTaskCard extends StatelessWidget {
  final bool activated;
  final String header;
  final String subHeader;
  final String date;
  SearchTaskCard(
      {Key? key,
      required this.date,
      required this.activated,
      required this.header,
      required this.subHeader})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isActive = activated.obs;

    return Obx(() {
      return isActive.value
          ? Column(children: [
              InactiveTaskCard(
                  header: header,
                  notifier: isActive,
                  subHeader: subHeader,
                  date: date),
              AppSpaces.verticalSpace10
            ])
          : Column(children: [
              ActiveTaskCard(
                  header: header,
                  notifier: isActive,
                  subHeader: subHeader,
                  date: date),
              AppSpaces.verticalSpace10
            ]);
    });
  }
}
