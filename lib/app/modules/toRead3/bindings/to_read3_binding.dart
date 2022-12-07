import 'package:get/get.dart';

import '../controllers/to_read3_controller.dart';

class ToRead3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead3Controller>(
      () => ToRead3Controller(),
    );
  }
}
