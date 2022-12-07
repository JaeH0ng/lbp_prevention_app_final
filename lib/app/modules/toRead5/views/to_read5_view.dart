import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read5_controller.dart';

class ToRead5View extends GetView<ToRead5Controller> {
  const ToRead5View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ToRead5Controller controller2 = Get.put(ToRead5Controller());
    return GetBuilder(
        init: ToRead5Controller(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              backgroundColor: Colors.grey[200],
              title: const Text(
                '호흡 5. 바른 자세유지가 요구되는 시점',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontFamily: 'Samanco_bold'),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '안녕하세요 사용자님, <자세> 카테고리에서는 사용자님이 현재 취하고 있는 자세가 요통에 어떤 영향을 미치는 지 알아보고, 올바른 자세에 대해 학습하는 것을 목표로 합니다.\n\n많은 사용자분들이 평소에 취하는 자세가 허리 건강에 얼마나 중요한지 어렴풋이는 알고 계시리라 생각됩니다. 하지만, 정확히 자세와 허리 건강의 관계가 어떤지는 알고 계셨나요? 이번 시간에는 올바르지 못한 자세가 어떤 기전으로 허리에 악영향을 미치게 되는지 학습합니다.',
                      style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                    ),
                    Text(
                      '\n\n현대인들은 생활 속의 많은 상황에서 허리 근육에 스트레스가 가해질 위험을 갖게 됩니다. 그 예시는 대표적으로 아래와 같습니다.',
                      style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                    ),
                    Text(
                      '\n\n<바른 자세유지가 요구되는 시점>',
                      style:
                          TextStyle(fontSize: 23, fontFamily: 'Samanco_bold'),
                    ),
                    Text(
                      '\n\n한쪽 팔을 주로 사용하는 경우,\n가방을 한쪽으로 메는 경우,\n옆으로 누워있는 경우 등은 어깨높이의 차이를 유발합니다. \n\n잘못된 운전습관이나 오랜 시간 컴퓨터를 사용하는 경우, 책상에 고개를 숙이고 오래 앉아있는 경우 등은 등을 굽게 합니다.\n또한 복부비만, 유전, 운동부족은 요부전만이나 후만 상태를 초래하고, 팔자걸음이나 안짱다리 등 걸음걸이의 문제, 한쪽 다리를 꼬고 앉거나 한쪽 다리에 체중을 싣고 서 있는 자세 등은 골반의 변형을 초래하여 다리길이의 변형을 유발합니다.(권휘련 등, 2006)',
                      style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
