import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskez/BottomSheets/bottom_sheets.dart';
import 'package:taskez/routes/app_routes.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/BottomSheets/bottom_sheet_holder.dart';
import 'package:taskez/widgets/Onboarding/labelled_option.dart';

import 'create_task.dart';

class DashboardAddBottomSheet extends StatelessWidget {
  const DashboardAddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppSpaces.verticalSpace10,
      BottomSheetHolder(),
      AppSpaces.verticalSpace10,
      LabelledOption(
        label: 'Create Task',
        icon: Icons.add_to_queue,
        callback: _createTask,
      ),
      LabelledOption(
          label: 'Create Project',
          icon: Icons.device_hub,
          callback: () {
            Get.toNamed(AppRoutes.createProject);
          }),
      LabelledOption(
          label: 'Create team',
          icon: Icons.people,
          callback: () {
            Get.toNamed(AppRoutes.setMembers);
          }),
      LabelledOption(
          label: 'Create Event',
          icon: Icons.fiber_smart_record,
          callback: () {
            Get.toNamed(AppRoutes.taskDueDate);
          }),
    ]);
  }

  void _createTask() {
    showAppBottomSheet(
      CreateTaskBottomSheet(),
      isScrollControlled: true,
      popAndShow: true,
    );
  }
}
