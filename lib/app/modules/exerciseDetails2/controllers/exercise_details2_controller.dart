import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbp_web/app/modules/exercise_details/views/exercise_list_action/actionExercise.dart';

class ExerciseDetails2Controller extends GetxController {
  //TODO: Implement ExerciseDetails2Controller
  final CountDownController controller = CountDownController();
  PageController pageController = PageController(initialPage: 0);
  final actionExerciseList = ActionExercise.actionExerciseList();
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
  void nextPage(){
    pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
