import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read7_controller.dart';

class ToRead7View extends GetView<ToRead7Controller> {
  const ToRead7View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ToRead7Controller controller2 = Get.put(ToRead7Controller());
    return GetBuilder(
        init: ToRead7Controller(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              backgroundColor: Colors.grey[200],
              title: const Text(
                '7. 그러면 올바른 자세는 어떤 자세일까?',
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
                      '올바른 자세는 신체의 안정성을 유지할 수 있는 자세로, 에너지 소비가 감소하고 내장기관이 압박받지 않으며, 허리건강을 유지할 수 있는 자세입니다.\n\n바른 자세와 운동에 대한 지식 수준이 높을수록 요통의 예방과 재발 방지를 위한 운동과 바른 자세의 수행 정도가 높기 때문에, 이번 회차에서는 올바른 자세는 어떤 자세인지 알려드립니다.(류록규, 1998; 형희경, 2006; 권휘련, 2005)\n',
                      style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                    ),
                    Image.asset(
                      'lib/app/images/toRead/posture7/breathe_7_1.gif',
                      height: 320,
                    ),
                    Text(
                      '- 올바른 자세의 예시',
                      style: TextStyle(fontSize: 23, fontFamily: 'Samanco_bold'),
                    ),
                    Text(
                      '\n다리나 발목을 꼬지 않고, 허리는 과전만 혹은 후만, 측만되지 않았으며, 고개를 숙이지 않는다.',
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
