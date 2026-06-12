import 'package:get/get.dart';

class SearchTabController extends GetxController {
  final selectedTab = 0.obs;

  void changeTab(int index) {
    selectedTab.value = index;
  }
}
