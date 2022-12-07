import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read12_controller.dart';

class ToRead12View extends GetView<ToRead12Controller> {
  const ToRead12View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ToRead12Controller controller2 = Get.put(ToRead12Controller());
    return GetBuilder(
      init: ToRead12Controller(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: const Text(
              '12. 복근운동의 올바른 방법-pelvic tilt',
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
                        '운동이 많이 익숙해 지셨나요? 처음 할 때보다 배근육이 덜 아프시나요? 운동에 많이 익숙지셨길 바라면서 오늘은 올바른 복근운동의 자세에 대해 알아보도록 하겠습니다.\n\n혹시 bridge, dead bug 운동 하면서 시작 전 공통적으로 취한 자세가 있을까요? 바로 골반과 허리를 골반에 아예 붙이는 ‘pelvic tilt’ 자세입니다. ',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'lib/app/images/toRead/back12/back_12_1.gif',
                        width: 350,
                      ),
                      Text(
                        '저희가 평소에 누워있을 때는 아래 사진처럼 허리와 바닥이 서로 맞닿지 않습니다.\n',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Image.asset(
                        'lib/app/images/toRead/back12/back_12_2.gif',
                        width: 350,
                      ),
                      Text(
                        '하지만 pelvic tilt 자세를 하신다면 다음 사진과 같이 허리와 바닥이 맞닿게 됩니다.',
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
                        '보기에는 쉬워 보이지만 처음에는 많이 어려웠을 겁니다. 그러면 굳이 ‘pelvic tilt’를 해야 하는 이유가 있을까요? \n바로 허리의 뻣뻣함을 줄여주고 허리근육을 부드럽게 펴는데 도움이 된다고 합니다. 특히 복부와 엉덩이 근육을 강화시켜 저희의 운동목적에 딱 맞는 운동입니다. 만약 아직도 이 자세가 어려우신 분들은 허리 밑에 수건을 한 장 깔고 그 수건을 꾹 눌러 수건과 허리 사이에 공간을 최소화한다는 느낌으로 하시면 훨씬 더 쉽게 하실 수 있을 겁니다.\n\n오늘은 여기까지 올바른 운동자세에 대해 안내 드리겠습니다. 오늘 배운 내용 잊지 말고 꼭 bridge, dead bug자세 때 해주세요!',
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
