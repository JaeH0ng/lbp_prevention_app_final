import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read8_controller.dart';

class ToRead8View extends GetView<ToRead8Controller> {
  const ToRead8View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ToRead8Controller controller2 = Get.put(ToRead8Controller());
    return GetBuilder(
        init: ToRead8Controller(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              backgroundColor: Colors.grey[200],
              title: const Text(
                '8. 등배근육 中 다열근에 대하여',
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
                    Image.asset(
                      'lib/app/images/toRead/back8/back_8_1.jpg',
                      height: 300,
                    ),
                    Text(
                      '사진출처 : 강재영 역. (2009). (The)muscle : 그림과 사진으로 배우는 근육학. 한솔의학서적.',
                      style: TextStyle(fontFamily: 'Samanco'),
                    ),
                    Text(
                      '\n\n다열근은 척추의 극돌기에 붙어 있는 근육입니다. \n가장 중요한 다열근의 기능은 척추가 전방으로 굴곡을 하는 동안 원심성 수축(ecentric contraction)을 통해 전방 전단(anterior shear)과 굴곡을 조절하는 것입니다. \n쉽게 말하면 굴곡 힘(flexion force)에 대항 균형(counterbalancing)을 하고, 압박력(compression force)을 가해 척추의 안정성에 기여한다고 할 수 있습니다.',
                      style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                    ),
                    Text(
                      'Hide의 연구에 따르면, 요통을 경험한 후 증상이 있는 쪽의 다열근 위축(trophy)이 있는 환자는 근육 부피를 회복시키기 위해 고안된 운동 프로그램이 필요하다고 보고하였습니다. 또한 Hodges의 논문에 따르면, 다른 부척추 근육보다 큰 생리학적 단면적(CSA)을 가진 다열근은 급성 요통 증상에서 다열근 CSA의 국소적인 감소가 발견되었다고 합니다. 이에 따라 요통을 예방하고 치료하기 위해 다열근 부피를 회복시키기 위한 운동 프로그램의 필요성이 강조되고 있습니다.',
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
