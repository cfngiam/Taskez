import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskez/Values/values.dart';

import 'active_project_selectable_container.dart';
import 'inactive_project_selectable_container.dart';

class ProjectSelectableContainer extends StatelessWidget {
  final bool activated;
  final String header;

  const ProjectSelectableContainer({
    Key? key,
    required this.activated,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isActive = activated.obs;

    return Obx(() {
      return isActive.value
          ? Column(
              children: [
                InactiveProjectSelectableContainer(
                  header: header,
                  notifier: isActive,
                ),
                AppSpaces.verticalSpace10
              ],
            )
          : Column(children: [
              ActiveProjectSelectableContainer(
                header: header,
                notifier: isActive,
              ),
              AppSpaces.verticalSpace10
            ]);
    });
  }
}
