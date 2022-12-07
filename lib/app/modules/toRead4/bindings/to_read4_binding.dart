import 'package:get/get.dart';

import '../controllers/to_read4_controller.dart';

class ToRead4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead4Controller>(
      () => ToRead4Controller(),
    );
  }
}
