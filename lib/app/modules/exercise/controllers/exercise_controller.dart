import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ExerciseController extends GetxController {
  //TODO: Implement ExerciseController
  var auth = FirebaseAuth.instance.currentUser;
  final count = 0.obs;
  @override
  void onInit() {
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
