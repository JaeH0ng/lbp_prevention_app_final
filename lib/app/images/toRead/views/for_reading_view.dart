import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ForReadingView extends GetView {
  const ForReadingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForReadingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ForReadingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
