import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/controllers/to_read_controller.dart';

import '../controllers/to_read1_controller.dart';

class ToRead1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead1Controller>(
      () => ToRead1Controller(),
    );
  }
}
