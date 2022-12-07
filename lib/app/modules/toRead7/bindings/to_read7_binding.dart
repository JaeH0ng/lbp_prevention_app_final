import 'package:get/get.dart';

import '../controllers/to_read7_controller.dart';

class ToRead7Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead7Controller>(
      () => ToRead7Controller(),
    );
  }
}
