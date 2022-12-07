import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/alarmSettings/views/alarm_settings_view.dart';
import 'package:lbp_web/app/routes/app_pages.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: MediaQuery.of(context).size.width*0.9,
              //   height: MediaQuery.of(context).size.height*0.5,
              //   child: Column(
              //     children: [
              //       Container(
              //
              //       )
              //     ],
              //   ),
              // ),
              logOutWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget logOutWidget(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.green,
        minimumSize: Size(130, 130),
        maximumSize: Size(180, 180),
        alignment: Alignment.centerLeft,
        textStyle: TextStyle(fontSize: 20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('로그아웃', style: TextStyle( fontFamily: 'Samanco'),),
          const Icon(
            Icons.logout_outlined,
          ),
        ],
      ),
      onPressed: () {
        FirebaseAuth.instance.signOut();
        Get.offAndToNamed(Routes.LOGO_PAGE);
      },
    );
  }

  Widget settingWidget(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.green,
        minimumSize: Size(130, 130),
        maximumSize: Size(180, 180),
        alignment: Alignment.centerLeft,
        textStyle: TextStyle(fontSize: 20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('알림 설정'),
          const Icon(
            Icons.alarm_add,
          ),
        ],
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AlarmSettingsView()));
      },
    );
  }
}
