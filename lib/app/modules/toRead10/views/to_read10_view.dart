import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read10_controller.dart';

class ToRead10View extends GetView<ToRead10Controller> {
  const ToRead10View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ToRead10Controller controller2 = Get.put(ToRead10Controller());
    return GetBuilder(
      init: ToRead10Controller(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: const Text(
              '10. 복직근운동은 왜 해야 하나요?',
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
                        '안녕하세요! 오늘 운동이 많이 힘드시지는 않았나요? \n평소에 근력운동을 하셨던 분이라면 괜찮았을지도 모르겠지만 근력운동을 따로 시간 내서 하지 않으셨던 분은 배근육이 땡기고 쑤시는 등 힘드셨으리라 생각이 듭니다.\n\n그러면 우리는 이렇게 힘이 드는데 복근운동을 왜 해야 할까요?',
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
                        '혹시 복근 하면 뭐가 떠오르시나요? 식스팩이 가장 먼저 떠오르시지는 않나요? 우리가 흔히 알고있는 그리고 볼 수 있는 복근은 바로 식스팩을 만드는 ‘복직근’입니다. 오늘은 우선 이 복직근에 대해서 알아보는 시간을 가지도록 합시다!\n\n복직근은 아래의 사진처럼 우리 배의 중앙에 있는 근육으로 주로 자세를 유지하거나 허리를 구부릴 때 사용하는 근육입니다. 또한 가장 중요한 역할은 척추주변의 근육과 역할을 분배하여 조금이라도 척추주변근육의 부담을 덜어줍니다.\n',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Image.asset(
                        'lib/app/images/toRead/abdominis10/abdominus_10_1.jpg',
                        height: 300,
                      ),
                      Text(
                        '사진출처 : 강재영 역. (2009). (The)muscle : 그림과 사진으로 배우는 근육학. 한솔의학서적.',
                        style: TextStyle(fontFamily: 'Samanco'),
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
                        '만약 이런 역할을 하는 복직근이 약화된다면 어떻게 될까요? \n앞에서 복직근이 척추 주변의 근육의 부하를 감소시킨다는 사실을 기억하시죠? 복직근이 약해지게 되면 복직근 대신 척추주변이 있는 근육들이 긴장이 되고 경직되면서 우리가 평상시에 겪는 허리통증 즉, 요통이 발생하게 됩니다. 또한 복직근은 우리 몸의 코어근육 중 하나이기에 신체의 안정성에 문제가 발생할 수 있습니다. 따라서 우리는 열심히 운동을 해야 되겠죠?\n\n하지만 복직근만을 강화시키기 위한 운동을 너무 많이 하면 문제점이 발생합니다. 바로 복직근이 커지고 뻣뻣해지면서 다음 그림과 같이 등이 굽고 어깨가 말리는 흉추후만이 발생할 수 있습니다. 또한 허리를 양 옆으로 회전할 수 있는 능력이 감소된다고 합니다.',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Image.asset(
                        'lib/app/images/toRead/abdominis10/abdominus_10_2.gif',
                        height: 200,
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
                        '그러니 우리는 식스팩을 만들기 위해 무조건 복직근 운동만 해서도 너무 안해서도 안되겠죠?\n\n자 그럼 남은 시간도 저희의 몸을 위해서 열심히 운동해볼까요?',
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
