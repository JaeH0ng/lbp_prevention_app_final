import 'package:get/get.dart';

import '../controllers/to_read2_controller.dart';

class ToRead2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead2Controller>(
      () => ToRead2Controller(),
    );
  }
}
