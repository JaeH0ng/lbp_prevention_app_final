import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/logo_page_controller.dart';

class LogoPageView extends GetView<LogoPageController> {
  const LogoPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(controller.count);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            width: 360,
            child: Image.asset(
              'lib/app/images/logo_image/logo_image.png',
            ),
          ),
          Text(
            '매일 10분으로 허리 건강을 지켜드립니다.',
            style: TextStyle(
                fontSize: 20, letterSpacing: 1, fontFamily: 'Samanco'),
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/authentication');
            },
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 360,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent[700],
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      '로그인',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ), //로그인 버튼
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Get.offNamed('home');
            },
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 360,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent[700],
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text('체험하기',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
