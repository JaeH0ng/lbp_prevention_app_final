import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/to_read6_controller.dart';

class ToRead6View extends GetView<ToRead6Controller> {
  const ToRead6View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ToRead6Controller controller2 = Get.put(ToRead6Controller());
    return GetBuilder(
      init: ToRead6Controller(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: const Text(
              '6. 잘못된 자세는 어떤 문제를 낳을까?',
              style: TextStyle(fontSize: 23, color: Colors.black, fontFamily: 'Samanco_bold'),
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
                      Image.asset(
                        'lib/app/images/toRead/posture6/breathe_6_1.jpg',
                        height: 350,
                      ),
                      Text(
                        '- 앉아서 다리를 꼰 자세(잘못된 자세)',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Text(
                        '\n건강한 사람에 비해 요통을 경험하는 사람은 무게중심을 후방으로 유지하려는 경향이 강합니다. 이는 신체의 근육을 이완시키고 척추뼈의 전만 곡선이 증가하는 결과를 초래하여, 척추신경에 가해지는 압박을 더하고 역학적 스트레스를 가하게 됩니다. 또한 이런 자세는 허리의 근육, 건(힘줄), 인대를 불균형하게 하고 척추의 불규칙적인 변형을 초래하여, 만성요통의 원인이 됩니다.(신재훈, 2002)',
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
                        '일반적으로 올바른 자세란, 신체의 무게중심이 유양돌기로부터 어깨, 골반, 무릎, 발목의 전방을 지나는 자세입니다.(류록규, 1998), 정상적으로 인간은 균형 유지를 위해 경추전만, 흉추후만, 요추전만의 자세를 취하지만, 바르지 못한 자세는 측만증, 후만증, 전만증, 전경두부 등의 척추 변형을 초래합니다.(김명기, 2005)\n\n바르지 못한 자세가 오래 지속되면 고관절 굴곡근, 요부 신전근, 복근의 긴장과 약화되고, 등이 평평하다면 골반의 후경사, 요부의 충격 흡수율 저하, 후종인대의 긴장으로 인한 추간판의 후방 탈출 가능성 증가 등의 문제가 발생합니다. 축이 높은 신발을 신은 듯한 자세를 유지한다면 비복근과 슬괵근이 단축되고 고관절이 신전, 장요근이 긴장하며 허리는 과전만(앞으로 너무 튀어나온 상태)됩니다. 허리의 신전근이 너무 강하다면 허리의 전만각(앞으로 튀어나온 정도)가 증가하고, 양쪽 신전근의 균형이 맞지 않는다면 측만증, 양쪽 신전근이 모두 약하다면 후만증이 발생합니다.(이경정, 2006)',
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
