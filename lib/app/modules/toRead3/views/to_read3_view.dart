import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read3_controller.dart';

class ToRead3View extends GetView<ToRead3Controller> {
  const ToRead3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ToRead3Controller controller2 = Get.put(ToRead3Controller());
    return GetBuilder(
      init: ToRead3Controller(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: const Text(
              '호흡 3. 우리는 어떤 호흡을 해야 할까?',
              style: TextStyle(fontSize: 23, color : Colors.black, fontFamily: 'Samanco_bold'),
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
                        '앞선 교육들을 통해 사용자님의 현재 호흡양상을 알아보고, 잘못된 호흡 방법이 왜 문제가 되는지를 알아보았습니다.\n\n이번 교육에서는 허리 통증을 완화할 수 있는 호흡 방법이 무엇인지 알아보겠습니다. <복압 호흡>이라고도 불리는 IAP 호흡법인데요, IAP란 intra-abdominal pressure, 즉 복부 내부의 압력을 의미합니다. IAP 호흡법은 쉽게 말해 배가 부풀어져 있는(복부 내부의 압력이 가해진 상태)로 숨을 쉬는 것을 의미합니다.',
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
                        'lib/app/images/toRead/breath3/breathe_3_1.gif',
                        height: 400,
                      ),
                      Text(
                        '\n숨을 마시며 자연스럽게 횡격막이 내려가고 이로 인해 복부에 압력이 걸리게 됩니다. 하지만 숨을 내쉴 때 의식적으로 이 압력을 유지해 주어야 IAP 호흡법이라고 할 수 있습니다. 이 호흡법은 몸의 중심 압력이 높아지고, 척주가 지탱되어 근육의 부담이 줄게 됩니다.',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      )
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
                      Text(
                        '복압이 유지되어 척주가 안정되면, 별다른 노력 없이도 올바른 자세를 유지할 수 있습니다. 올바른 자세가 허리 통증에 미치는 영향은 교육자료의 <자세> 카테고리에서도 자세히 설명하겠지만, 척추사이원반에 가해지는 압력이 줄어든다는 것이 주요 요점입니다. 또한, IAP 호흡법을 통해 복부 근력도 단련할 수 있는데, 복부 근력이 허리 통증에 미치는 영향에서는 다른 교육자료에 자세히 설명되어 있습니다.\n\nIAP 호흡법의 자세한 방법은 <호흡 운동> 카테고리에서 더 자세히 설명하겠습니다.',
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
