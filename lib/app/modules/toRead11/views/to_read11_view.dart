import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read11_controller.dart';

class ToRead11View extends GetView<ToRead11Controller> {
  const ToRead11View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ToRead11Controller controller2 = Get.put(ToRead11Controller());
    return GetBuilder(
      init: ToRead11Controller(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: const Text(
              '11. 복사근운동은 왜 해야 하나요?',
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
                        '다들 운동 열심히 하고 계신가요?\n처음 할 때 보다는 많이 적응 되셨나요? 물론 아직 힘드신 분도 계시죠? 하지만 꾸준히 하다 보면 언젠가는 이러한 동작들이 익숙해질 때가 올 거에요. 우리 조금 더 힘내 봐요!\n\n오늘은 저번에 이어서 복사근이라는 근육을 알아 볼 겁니다. 혹시 많은 연예인 또는 운동선수들이 복근을 보여줄 때 앞에 보이는 식스팩 뿐만 아니라 옆구리 쪽에 사선으로 보이는 근육을 보신적이 있나요? 흔히 옆구리 근육으로 알고 있는 근육이 바로 ‘복사근’ 입니다.\n\n복사근은 두종류로 좀 더 안쪽에 있는 내복사근, 바깥쪽에 있는 외복사근으로 되어 있습니다. 아래에 있는 사진은 바로 외 복사근입니다.\n ',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Image.asset(
                        'lib/app/images/toRead/abdominis11/abdominus_11_1.gif',
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
                        '이 2개의 근육은 사선의 방향이 다르며 2개의 근육의 움직임을 통해 다양한 운동을 할 수 있습니다. 우선 외복사근은 주로 옆으로 구부리는 동작 시 사용됩니다. 반면 내복사근은 허리를 앞으로 구부리는 동작 시 사용됩니다. 이러한 근육 기능이 합쳐져 복사근은 주로 허리를 회전하는 기능을 가지고 있습니다.\n따라서 복사근이 약해지면 허리를 회전시키는 운동은 하기 어렵겠죠? 또한 자세에도 변화가 일어납니다. 원래 복사근이 골반이 약간 뒤로 경사져 위치를 할 수 있게 도와주는데 근력이 약해지면 이러한 구조가 무너지게 됩니다. 따라서 골반이 앞으로 밀려나가 등이 굽을 수 있습니다.\n\n우리가 흔히 알고 있는 복근운동, 예를 들면 윗몸 일으키기와 같은 운동은 대부분 복직근만을 사용하는 운동이라고 합니다. 따라서 복사근을 강화시키기 어려울 수 있습니다. 이 기회에 dead bug, bird dog 와 같은 운동을 열심히 하여 사근을 강화시키는 것을 어떨까요?\n',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Image.asset(
                        'lib/app/images/toRead/abdominis11/abdominus_11_1.gif',
                        height: 200,
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
