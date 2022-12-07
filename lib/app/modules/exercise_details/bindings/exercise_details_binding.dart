import 'package:get/get.dart';
import 'package:lbp_web/app/modules/exercise/controllers/exercise_controller.dart';
import 'package:lbp_web/app/modules/settings/controllers/settings_controller.dart';
import 'package:lbp_web/app/modules/statistics/controllers/statistics_controller.dart';
import 'package:lbp_web/app/modules/toRead/controllers/to_read_controller.dart';

import '../controllers/exercise_details_controller.dart';

class ExerciseDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExerciseDetailsController>(
      () => ExerciseDetailsController(),
    );
    Get.lazyPut<ExerciseController>(
          () => ExerciseController(),
    );
    Get.lazyPut<StatisticsController>(
          () => StatisticsController(),
    );
    Get.lazyPut<SettingsController>(
          () => SettingsController(),
    );
    Get.lazyPut<ToReadController>(
          () => ToReadController(),
    );
  }
}
