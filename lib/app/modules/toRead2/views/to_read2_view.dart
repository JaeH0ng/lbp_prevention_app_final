import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/toRead/views/to_read_view.dart';

import '../controllers/to_read2_controller.dart';

class ToRead2View extends GetView<ToRead2Controller> {
  // ToRead2Controller controller2 = Get.put(ToRead2Controller());
  ToRead2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ToRead2Controller(),
        builder: (context) {
          return Scaffold(
              backgroundColor: Colors.grey[200],
              appBar: AppBar(
                backgroundColor: Colors.grey[200],
                title: const Text(
                  '호흡 2. 잘못된 호흡은 어떤 문제를 낳을까?',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontFamily: 'Samanco_bold'),
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
                            '지난 교육자료를 통해 사용자님은 본인의 호흡 양상이 어떤지 파악하셨으리라 생각됩니다. 결론부터 이야기하자면, 허리 통증 완화에 가장 이상적인 호흡 방법은 <복압호흡> 방법입니다. \n\n그렇다면 이번 교육에서는, 복압 호흡 외의 호흡방식, 특히 가슴호흡이 왜 문제가 되는지 알아보겠습니다.',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Samanco'),
                          ),
                          Text(
                            '\n호흡은 인간의 생명 유지를 위해서 필수적인 활동으로, 신체의 세포들이 활동하는 데 필요로 하는 산소를 공급하는 역할을 수행합니다. 비록 가슴호흡을 한다고 해서 생명에 지장이 있는 것은 아니지만, 통증과 피로를 겪는 사람들에게서 가슴호흡은 통증을 심화시킵니다. \n\n호흡 시 날숨 끝 이산화탄소(EtCO2)를 분석했을 때, 정상 범위는 35-40mmHg이고 35mmHg 미만이라면 이상이 있는 호흡패턴이라고 정의합니다. “만성요통환자의 호흡패턴이상과 관절위치감각의 관계”(조병윤, 윤정규, 2019)라는 연구의 연구결과에 따르면, 가슴호흡을 시행하는 연구 대상자의 평균 EtCO2는 32.77mmHg로, 이상이 있는 가슴호흡 패턴에 해당합니다.',
                            style:
                            TextStyle(fontSize: 15, fontFamily: 'Samanco'),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EtCO2의 감소는 혈액 산도의 증가를 야기하며 이는 호흡기 알칼리증을 야기합니다.(Gardner, 1996), 호흡성 알칼리증은 생리적, 심리적, 신경상태에 변화를 일으키고 근육뼈대 계통에 부정적인 영향을 미칠 수 있고(Clifton-Smith & Rowley, 2011), 결과적으로 통증에 대한 역치를 감소시켜 몸이 더 아프고, 피로하게 되는 것입니다.\n\n또한, 호흡기 알칼리증이 근육뼈대 계통에 미치는 부정적 영향으로 인해 목뼈 관절의 운동성이 제한되고, 근육이 긴장되는 결과가 초래됩니다.(Jung, 2006)',
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                          ),
                          Text(
                            '\n그렇다면 허리 통증과 호흡은 어떤 관계가 있을까요? “만성요통환자의 호흡패턴이상과 통증과의 상관관계”(임채길, 2020)이라는 연구에 따르면, 호흡패턴 이상을 일으키는 중요 요소는 부적절한 자세와 구조적인 이상이고, 특히 허리 통증을 경험하는 사람은 횡경막의 움직임이 변화되어 호흡패턴에 변화가 발생한다고 했습니다. 또한 올바른 호흡패턴은 요통을 경험하는 사람의 퇴행되거나 손상된 척추사이원반에 중요하다고 했습니다.\n\n결국 올바르지 못한 자세로 인해 호흡패턴의 이상이 발생하고, 이로 인해 통증의 역치가 감소되어 통증을 더 쉽게 느끼게 되는 것입니다. 이를 바로잡기 위해서는 허리의 자세를 바로잡을 뿐 아니라, 올바른 호흡패턴을 수행하여 통증의 수준을 낮출 필요가 있습니다.',
                            style:
                            TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/app/images/toRead/breath2/breathe_2_1.gif',
                            height: 400,
                          ),
                          Text(
                            '- 올바르지 못한 호흡과 자세의 예시.',
                            style:
                                TextStyle(fontSize: 23, fontFamily: 'Samanco_bold'),
                          ),
                          Text(
                            '\n흉곽 호흡을 실시하고 있고, 경추와 요추는 앞으로 전만되어 있다. 추가적으로 다리를 꼬는 자세는 골반근에 악영향을 미친다.',
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Samanco'),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '다음 교육 내용에서는 허리 통증을 완화할 수 있는 호흡 방법인 <복압 호흡>, IAP 호흡법에 대해 알아보겠습니다.\n\n\n핵심 내용 정리\n잘못된 호흡 방법, 특히 가슴호흡은 잘못된 자세에서 비롯되고, 통증의 역치를 감소시킨다.',
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
