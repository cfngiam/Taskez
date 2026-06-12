import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/controllers/search_controller.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/Forms/search_box.dart';
import 'package:taskez/widgets/Search/task_card.dart';
import 'package:taskez/widgets/Shapes/app_settings_icon.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  /// Manages the active tab state (Task / Mention / Files).
  final SearchTabController controller = Get.put(SearchTabController());

  @override
  Widget build(BuildContext context) {
    final _searchController = new TextEditingController();
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: SearchBox(
                        placeholder: 'Search Dashboard',
                        controller: _searchController),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      height: 60,
                      child: Text("Cancel",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.lato(
                              color: HexColor.fromHex("616575"),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    )),
              ],
            ),
            AppSpaces.verticalSpace10,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PrimaryTabButton(
                      buttonText: "Task",
                      itemIndex: 0,
                      notifier: controller.selectedTab),
                  PrimaryTabButton(
                      buttonText: "Mention",
                      itemIndex: 1,
                      notifier: controller.selectedTab),
                  PrimaryTabButton(
                      buttonText: "Files",
                      itemIndex: 2,
                      notifier: controller.selectedTab)
                ],
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: AppSettingsIcon())
            ]),
            AppSpaces.verticalSpace20,
            Expanded(
              child: ListView(children: [
                SearchTaskCard(
                    activated: false,
                    header: "Unity Dashboard",
                    subHeader: "in UI Design Kit",
                    date: "Dec 2"),
                SearchTaskCard(
                    activated: true,
                    header: "Unity Gaming",
                    subHeader: "Coded Template",
                    date: "Nov 4"),
                SearchTaskCard(
                    activated: false,
                    header: "Gitlab Landing Page",
                    subHeader: "in UI Design Kit",
                    date: "Nov 29"),
                SearchTaskCard(
                    activated: true,
                    header: "Portfolio Design",
                    subHeader: "Tesla Inc.",
                    date: "Nov 26"),
                SearchTaskCard(
                    activated: true,
                    header: "Stuart'\s Workplace",
                    subHeader: "Coded Template",
                    date: "Aug 1"),
              ]),
            )
          ]),
        ));
  }
}
