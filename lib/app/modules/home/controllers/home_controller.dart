import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbp_web/app/modules/exercise/views/exercise_view.dart';
import 'package:lbp_web/app/modules/settings/views/settings_view.dart';
import 'package:lbp_web/app/modules/statistics/views/statistics_view.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxInt tabIndex = 0.obs;
  final pages = [
    ExerciseView(),
    ToReadView(),
    StatisticsView(),
    SettingsView()
  ];
  RxBool isExerciseViewOpen = false.obs;
  late final List<GlobalKey<NavigatorState>> navigatorKeysList =
      List.generate(pages.length, (index) => GlobalKey<NavigatorState>());

  void changeTabIndex(int index) {
    tabIndex(index);
    update();
  }
  // void changeIsExerciseViewOpen(){
  //   isExerciseViewOpen = true;
  // }

// Future<bool> onWillPop(value) async {
//   return !await navigatorKey[tabIndex.value].currentState!.maybePop();
// }
}
