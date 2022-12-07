import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/alarm_settings_controller.dart';

class AlarmSettingsView extends GetView<AlarmSettingsController> {
  const AlarmSettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Text(
          '미구현',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
