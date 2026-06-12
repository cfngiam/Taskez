import 'package:get/get.dart';

class WorkspaceController extends GetxController {
  final selectedColor = 5.obs;

  void selectColor(int index) {
    selectedColor.value = index;
  }
}
