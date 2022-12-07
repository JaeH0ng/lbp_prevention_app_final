import 'package:get/get.dart';
import 'package:lbp_web/app/data/models/log_model.dart';
import 'package:lbp_web/app/data/providers/log_provider.dart';

class LogoPageController extends GetxController {
  //TODO: Implement LogoPageController
  final LogProvider logProvider = LogProvider();
  final count = 0.obs;
  @override
  void onInit() async{
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
