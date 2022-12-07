import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbp_web/app/data/models/log_model.dart';
import 'package:lbp_web/app/data/providers/log_provider.dart';
import 'package:lbp_web/app/modules/exercise_details/views/exercise_list_action/actionExercise.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ExerciseDetailsController extends GetxController {
  //TODO: Implement ExerciseDetailsController
  bool initialyzing = false;
  PageController pageController = PageController(initialPage: 0);
  LogProvider logProvider = LogProvider();
  late String auth = FirebaseAuth.instance.currentUser!.uid;
  late Log currentLog; //전역변수
  final actionExerciseList = ActionExercise.actionExerciseList();
  final CountDownController controller = CountDownController();

  @override
  void onInit() async {
    currentLog = await logProvider.getLog(auth, DateTime.now());
    // 1. db에서 마지막으로 저장된 페이지를 불러와서 page
    pageController = PageController(initialPage: currentLog.task!);
    initialyzing = true;
    update();
    //위에 코드가 데체
//2.
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

  void nextPage() async {
    currentLog.addTask();
    await logProvider.setLog(auth, currentLog);
    pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
