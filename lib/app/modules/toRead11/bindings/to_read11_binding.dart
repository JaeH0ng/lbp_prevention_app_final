import 'package:get/get.dart';

import '../controllers/to_read11_controller.dart';

class ToRead11Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead11Controller>(
      () => ToRead11Controller(),
    );
  }
}
