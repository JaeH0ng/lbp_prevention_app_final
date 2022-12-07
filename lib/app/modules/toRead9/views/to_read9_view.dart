import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read9_controller.dart';

class ToRead9View extends GetView<ToRead9Controller> {
  const ToRead9View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ToRead9Controller controller2 = Get.put(ToRead9Controller());
    return GetBuilder(
        init: ToRead9Controller(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text(
                '등배근육 中 장요근에 대하여',
                style: TextStyle(fontSize: 23, fontFamily: 'Samanco_bold'),
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
                    Image.asset(
                      'lib/app/images/toRead/back9/back_9_1.jpg',
                      height: 300,
                    ),
                    Text(
                      '사진출처 : 강재영 역. (2009). (The)muscle : 그림과 사진으로 배우는 근육학. 한솔의학서적.',
                      style: TextStyle(fontFamily: 'Samanco'),
                    ),
                    Text(
                      '\n\n장요근을 구성하고 있는 요근은 척추의 신전과 굴곡의 기능에 관여하고, 이러한 신전과 굴곡의 힘은 척추가 신전되었을 때 더 커지고, 반대로 척추가 굴곡되었을 때는 굴곡의 기능으로만 작용하는 경향이 있습니다. \n본질적으로 이러한 장요근의 힘은 압박과 전방전단(anterior shear)으로 작용하게 됩니다. 이때, 전단력은 척추를 분리시키는 힘으로 작용하여 허리에 부담을 주게 되고, 결국 요통의 원인이 됩니다.',
                      style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                    ),
                    Text(
                      '따라서 환자의 통증 원천이 전방 전단과 압박인 경우에는 장요근의 활성화를 최소화해야 합니다. 장요근이 단축으로 인해 과활성화될 경우, 골반의 전방경사와 척추의 전방전단력이 강해지고 이는 척추의 과신전으로 이어져 통증을 유발할 수 있습니다. 그러므로 신전으로 인한 통증 유발을 예방하기 위해서는 과하게 단축되어있는 장요근을 늘리는 운동 프로그램을 실시할 수 있습니다.',
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
