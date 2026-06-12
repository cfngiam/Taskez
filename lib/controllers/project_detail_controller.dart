import 'package:get/get.dart';

class ProjectDetailController extends GetxController {
  final selectedTab = 0.obs;
  final selectedLayout = 0.obs;

  void changeTab(int index) {
    selectedTab.value = index;
  }

  void changeLayout(int index) {
    selectedLayout.value = index;
  }
}
