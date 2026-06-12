import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/BottomSheets/bottom_sheets.dart';
import 'package:taskez/Screens/Chat/chat_screen.dart';
import 'package:taskez/Screens/Profile/profile_overview.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/controllers/dashboard_controller.dart';
import 'package:taskez/widgets/BottomSheets/dashboard_settings_sheet.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/Navigation/dasboard_header.dart';
import 'package:taskez/widgets/Shapes/app_settings_icon.dart';

import 'DashboardTabScreens/overview.dart';
import 'DashboardTabScreens/productivity.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  /// Manages tab selection (Overview / Productivity) and settings toggles.
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              DashboardNav(
                icon: FontAwesomeIcons.comment,
                image: "assets/man-head.png",
                notificationCount: "2",
                page: ChatScreen(),
                title: "Dashboard",
                onImageTapped: () {
                  Get.to(() => ProfileOverview());
                },
              ),
              AppSpaces.verticalSpace20,
              Text("Hello,\nDereck Doyle 👋",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
              AppSpaces.verticalSpace20,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PrimaryTabButton(buttonText: "Overview", itemIndex: 0, notifier: controller.selectedTab),
                    PrimaryTabButton(buttonText: "Productivity", itemIndex: 1, notifier: controller.selectedTab)
                  ],
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: AppSettingsIcon(
                      callback: () {
                        showAppBottomSheet(
                          DashboardSettingsBottomSheet(
                            totalTaskNotifier: controller.totalTaskEnabled,
                            totalDueNotifier: controller.totalDueEnabled,
                            workingOnNotifier: controller.workingOnEnabled,
                            totalCompletedNotifier: controller.totalCompletedEnabled,
                          ),
                        );
                      },
                    ))
              ]),
              AppSpaces.verticalSpace20,
              Obx(() {
                return controller.selectedTab.value == 0 ? DashboardOverview() : DashboardProductivity();
              })
            ]),
          ),
        ));
  }
}
