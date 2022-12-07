import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbp_web/app/routes/app_pages.dart';

class AuthenticationController extends GetxController {
  //TODO: Implement AuthenticationController

  Stream<User?> auth = FirebaseAuth.instance.authStateChanges();
 /* void createUser = () async {
    final newUser = FirebaseFirestore.instance.collection('log').doc(
        FirebaseAuth.instance.currentUser!.uid);
    await newUser.set({});
  }; */

  @override
  void onInit() {
    auth.listen((event) {
      if (FirebaseAuth.instance.currentUser != null) {
        WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
          Get.toNamed(Routes.HOME);
        });
      }
    });
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
}
