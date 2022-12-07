import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read13_controller.dart';

class ToRead13View extends GetView<ToRead13Controller> {
  const ToRead13View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ToRead13Controller controller2 = Get.put(ToRead13Controller());
    return GetBuilder(
      init: ToRead13Controller(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: const Text(
              '13. 복근운동의 올바른 방법-curl up',
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
                        '저번시간에 배운 pelvic tilt 자세 잊지 않고 잘 해주셨나요? 잘 하셨다면 칭찬하면서 오늘은 curl-up 운동에 대해 알아보겠습니다.\n\n아마 흔히 알고 있는 윗몸 일으키기와 동작이 달라 많이 당황했을 겁니다. 우리가 알고 있는 윗몸 일으키기 자세는 다음 사진과 같이 머리 뒤에 손을 대고 끝까지 일어나 앉는 자세였습니다.',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Image.asset(
                        'lib/app/images/toRead/back13/back_13_1.gif',
                        height: 250,
                      ),
                      Text(
                        '하지만 이 자세는 허리와 복근에 너무 많은 힘이 요구되기 때문에 부상당할 위험이 크다고 합니다. 또한 복직근에 매우 우세한 운동이기에 근육을 골고루 발달시키기 어렵다고 합니다. 따라서 저희는 이보다 더 쉽고 간편한 curl-up 운동을 하게 된 것입니다.',
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
                      Text(
                        '지금부터는 아래사진과 같이 허리 아래쪽이 뜨지 않을 정도로 상체만 살짝 들어 주시면 됩니다. 이 때 이 자세를 3-5초 동안 유지해 주면 됩니다. ',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Image.asset(
                        'lib/app/images/toRead/back13/back_13_2.gif',
                        height: 250,
                      ),
                      Text(
                        '\n그동안 윗몸일으키기를 할 때 짧은 시간안에 최대한 많이 해야 한다고 배우셨을 텐데 이젠 잊으시고 허리와 복근에 부담이 덜 가는 curl up운동을 해봅시다!',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        );
      }
    );
  }
}
