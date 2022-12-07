import 'package:get/get.dart';

import '../controllers/to_read9_controller.dart';

class ToRead9Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead9Controller>(
      () => ToRead9Controller(),
    );
  }
}
