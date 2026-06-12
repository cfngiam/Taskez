import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final selectedPlan = 0.obs;
  final multiUserEnabled = false.obs;
  final customLabelEnabled = false.obs;

  void selectPlan(int index) {
    selectedPlan.value = index;
  }
}
