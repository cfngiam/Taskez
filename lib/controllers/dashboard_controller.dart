import 'package:get/get.dart';

class DashboardController extends GetxController {
  final selectedTab = 0.obs;
  final totalTaskEnabled = true.obs;
  final totalDueEnabled = false.obs;
  final totalCompletedEnabled = true.obs;
  final workingOnEnabled = false.obs;

  void changeTab(int index) {
    selectedTab.value = index;
  }
}
