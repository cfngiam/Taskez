import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:taskez/BottomSheets/bottom_sheets.dart';
import 'package:taskez/Constants/constants.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/controllers/navigation_controller.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Dashboard/bottomNavigationItem.dart';
import 'package:taskez/widgets/Dashboard/dashboard_add_icon.dart';
import 'package:taskez/widgets/Dashboard/dashboard_add_sheet.dart';

class Timeline extends StatelessWidget {
  Timeline({Key? key}) : super(key: key);

  /// Manages the bottom navigation bar selection index.
  final NavigationController controller = Get.put(NavigationController());
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.fromHex("#181a1f"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Stack(children: [
          DarkRadialBackground(
            color: HexColor.fromHex("#181a1f"),
            position: "topLeft",
          ),
          Obx(() {
            return PageStorage(
                child: dashBoardScreens[controller.selectedIndex.value],
                bucket: bucket);
          })
        ]),
        bottomNavigationBar: Container(
            width: double.infinity,
            height: 90,
            padding: EdgeInsets.only(top: 10, right: 30, left: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: HexColor.fromHex("#181a1f").withOpacity(0.8)),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomNavigationItem(
                      itemIndex: 0,
                      notifier: controller.selectedIndex,
                      icon: Icons.widgets),
                  Spacer(),
                  BottomNavigationItem(
                      itemIndex: 1,
                      notifier: controller.selectedIndex,
                      icon: FeatherIcons.clipboard),
                  Spacer(),
                  DashboardAddButton(
                    iconTapped: (() {
                      showAppBottomSheet(Container(
                          height: Utils.screenHeight * 0.8,
                          child: DashboardAddBottomSheet()));
                    }),
                  ),
                  Spacer(),
                  BottomNavigationItem(
                      itemIndex: 2,
                      notifier: controller.selectedIndex,
                      icon: FeatherIcons.bell),
                  Spacer(),
                  BottomNavigationItem(
                      itemIndex: 3,
                      notifier: controller.selectedIndex,
                      icon: FeatherIcons.search)
                ])));
  }
}
