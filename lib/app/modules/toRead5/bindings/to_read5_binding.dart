import 'package:get/get.dart';

import '../controllers/to_read5_controller.dart';

class ToRead5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead5Controller>(
      () => ToRead5Controller(),
    );
  }
}
