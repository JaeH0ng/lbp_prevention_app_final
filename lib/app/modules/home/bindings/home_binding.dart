import 'package:get/get.dart';

import 'package:lbp_web/app/modules/exercise/controllers/exercise_controller.dart';
import 'package:lbp_web/app/modules/exercise_details/controllers/exercise_details_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/bird_dog5_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/bridge6_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/cobra7_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/dead_bug1_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/stretching8_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/stretching_illiopsoas4_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/superman3_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/trunk_curl_sit_up2_controller.dart';
import 'package:lbp_web/app/modules/settings/controllers/settings_controller.dart';
import 'package:lbp_web/app/modules/statistics/controllers/statistics_controller.dart';
import 'package:lbp_web/app/modules/toRead/controllers/to_read_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
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
    Get.lazyPut<ExerciseDetailsController>(
      () => ExerciseDetailsController(),
    );
    Get.lazyPut<Cobra7Controller>(
          () => Cobra7Controller(),
    );
    Get.lazyPut<Stretching8Controller>(
      () => Stretching8Controller(),
    );
    Get.lazyPut<Bridge6Controller>(
      () => Bridge6Controller(),
    );
    Get.lazyPut<BirdDog5Controller>(
      () => BirdDog5Controller(),
    );
    Get.lazyPut<StretchingIlliopsoas4Controller>(
      () => StretchingIlliopsoas4Controller(),
    );
    Get.lazyPut<Superman3Controller>(
      () => Superman3Controller(),
    );
    Get.lazyPut<TrunkCurlSitUp2Controller>(
      () => TrunkCurlSitUp2Controller(),
    );
    Get.lazyPut<DeadBug1Controller>(
      () => DeadBug1Controller(),
    );
    // Get.lazyPut<HomeController>(
    //   () => HomeController(),
    // );
    Get.lazyPut<ExerciseController>(
      () => ExerciseController(),
    );
    Get.lazyPut<StatisticsController>(
      () => StatisticsController(),
    );
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
