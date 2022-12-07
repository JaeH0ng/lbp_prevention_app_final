import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read4_controller.dart';

class ToRead4View extends GetView<ToRead4Controller> {
  const ToRead4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ToRead4Controller controller2 = Get.put(ToRead4Controller());
    return GetBuilder(
      init: ToRead4Controller(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: const Text(
              '호흡 4. IAP호흡법에 도움되는 크로커다일 호흡법',
              style: TextStyle(fontSize: 23 , color : Colors.black, fontFamily: 'Samanco_bold'),
            ),
            centerTitle: true,
          ),
          body: PageView(
            controller: controller.pageController,
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '앞선 교육들을 통해 IAP 호흡법이 허리 통증 완화를 도모하고 올바른 자세를 확립할 수 있는 호흡 방법이라는 것을 알아보았습니다.\n\n이번 교육에서는 IAP 호흡법을 좀 더 원활하게 수행할 수 있도록 도와주는 다른 호흡법을 소개하고자 합니다. 바로 “크로커다일 호흡법”이라는 호흡법입니다.\n\n“크로커다일 호흡 운동이 요통 환자들의 척주세움근 근활성도에 미치는 영향”이라는 논문에 따르면, 배호흡 운동은 허리 통증을 경험하는 환자들에게 많이 사용되지만, 치료사의 중재가 있을 때 정확히 할 수 있어 환자 혼자 스스로 정확한 운동을 하는 것이 쉽지 않습니다. 이런 단점을 보완하기 위해 크로커다일 운동에서는 바닥에 엎드린 자세에서 배의 움직임에 초점을 맞추어 호흡합니다. 사용자님은 크로커다일 운동을 수행하며 엎드린 자세에서 배로 바닥을 밀어내기 때문에 배의 움직임을 더 직관적으로 관찰할 수 있게 됩니다. 이 운동을 통해 배의 움직임을 이해하고, 충분히 이해되었을 때 IAP 호흡법을 수행하시면 되겠습니다.',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/app/images/toRead/breath4/breathe_4_1.gif',
                        height: 200,
                      ),
                      Text(
                        '- 크로커다일 호흡 운동',
                        style: TextStyle(fontSize: 23, fontFamily: 'Samanco_bold'),
                      ),
                      Text(
                        '\n\n배가 바닥을 밀어내며 골반이 들리는 것에 주목하자. \n여기에 익숙해지면 \n→똑바로 누워서 무거운 물건을 올려두고 시행 \n→ 똑바로 누워서 무게부하 없이 \n→ 앉아서 시행 순으로 시행한다.\n\n크로커다일 운동은 허리 통증과 관련이 높은 척주세움근에서 들숨 시 증가, 날숨 시 이완 효과가 있는 것으로 나타났고, 이는 허리 통증이 감소되는 효과를 야기합니다.\n\n자세한 운동 방법은 <호흡 운동> 카테고리에서 설명하겠습니다.',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
