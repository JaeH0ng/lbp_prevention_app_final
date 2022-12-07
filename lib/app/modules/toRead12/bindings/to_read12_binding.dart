import 'package:get/get.dart';

import '../controllers/to_read12_controller.dart';

class ToRead12Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead12Controller>(
      () => ToRead12Controller(),
    );
  }
}
