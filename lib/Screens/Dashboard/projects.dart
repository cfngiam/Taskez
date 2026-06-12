import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:taskez/Data/data_model.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/Chat/add_chat_icon.dart';
import 'package:taskez/widgets/Navigation/app_header.dart';
import 'package:taskez/widgets/Projects/project_card_horizontal.dart';
import 'package:taskez/widgets/Projects/project_card_vertical.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxInt settingsTab = 0.obs;
    final RxBool gridLayout = false.obs;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SafeArea(
          child: TaskezAppHeader(
            title: "Projects",
            widget: AppAddIcon(scale: 1.0),
          ),
        ),
      ),
      AppSpaces.verticalSpace20,
      Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PrimaryTabButton(
                  buttonText: "Favorites",
                  itemIndex: 0,
                  notifier: settingsTab),
              PrimaryTabButton(
                  buttonText: "Recent",
                  itemIndex: 1,
                  notifier: settingsTab),
              PrimaryTabButton(
                  buttonText: "All",
                  itemIndex: 2,
                  notifier: settingsTab)
            ],
          ),
          Container(
              alignment: Alignment.centerRight,
              child: InkWell(
                  onTap: () {
                    gridLayout.value = !gridLayout.value;
                  },
                  child: Obx(() {
                    return gridLayout.value
                        ? Icon(FeatherIcons.clipboard,
                            color: Colors.white, size: 30)
                        : Icon(FeatherIcons.grid,
                            color: Colors.white, size: 30);
                  })))
        ]),
      ),
      AppSpaces.verticalSpace20,
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Obx(() {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridLayout.value ? 2 : 1,
                  mainAxisSpacing: 10,
                  mainAxisExtent: gridLayout.value ? 220 : 125,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (_, index) => gridLayout.value
                    ? ProjectCardVertical(
                        projectName: AppData.productData[index]
                            ['projectName'],
                        category: AppData.productData[index]['category'],
                        color: AppData.productData[index]['color'],
                        ratingsUpperNumber: AppData.productData[index]
                            ['ratingsUpperNumber'],
                        ratingsLowerNumber: AppData.productData[index]
                            ['ratingsLowerNumber'],
                      )
                    : ProjectCardHorizontal(
                        projectName: AppData.productData[index]
                            ['projectName'],
                        category: AppData.productData[index]['category'],
                        color: AppData.productData[index]['color'],
                        ratingsUpperNumber: AppData.productData[index]
                            ['ratingsUpperNumber'],
                        ratingsLowerNumber: AppData.productData[index]
                            ['ratingsLowerNumber'],
                      ),
                itemCount: AppData.productData.length,
              );
            }),
          ),
        ),
      )
    ]);
  }
}
