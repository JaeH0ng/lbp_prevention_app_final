import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToRead3Controller extends GetxController {
  //TODO: Implement ToRead3Controller
  PageController pageController = PageController(
    initialPage: 0,
  );
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
