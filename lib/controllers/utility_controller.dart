import 'package:get/get.dart';

class UtilityController extends GetxController {
  /// Used to track bottom nav bar index
  var bottomNavIndex = 0.obs;

  ///Used to hold schedule period
  var selectedPeriod = "Daily".obs;

  ///Used to change the selectec period
  void changeSelectedPeriod(String period) => selectedPeriod.value = period;

  /// Updates the bottom navbar state
  void changebottomBarIndex(int i) {
    bottomNavIndex.value = i;

    switch (i) {
      case 0:
        Get.offNamed("/");
        break;
      case 1:
        Get.offNamed("/messages");
        break;
      case 2:
        Get.offNamed("/stats");
        break;
      case 3:
        Get.offNamed("/profile");
        break;
      default:
    }
  }
}
