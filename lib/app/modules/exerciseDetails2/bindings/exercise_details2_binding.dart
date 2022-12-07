import 'package:get/get.dart';

import '../controllers/exercise_details2_controller.dart';

class ExerciseDetails2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExerciseDetails2Controller>(
      () => ExerciseDetails2Controller(),
    );
  }
}
