import 'package:get/get.dart';

import '../controllers/alarm_settings_controller.dart';

class AlarmSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlarmSettingsController>(
      () => AlarmSettingsController(),
    );
  }
}
