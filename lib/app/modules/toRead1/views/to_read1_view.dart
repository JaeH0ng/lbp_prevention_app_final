import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../controllers/to_read1_controller.dart';

class ToRead1View extends GetView<ToRead1Controller> {
  const ToRead1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ToRead1Controller controller2 = Get.put(ToRead1Controller());
    return GetBuilder<ToRead1Controller>(
      init: ToRead1Controller(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: const Text(
              '호흡 1. 우리의 호흡 상태는 어떤가?',
              style: TextStyle(fontSize: 23, color: Colors.black, fontFamily: 'Samanco_bold'),
            ),
            centerTitle: true,
          ),
          body: PageView(
            controller :controller.pageController,
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '안녕하세요 사용자님, \n \n <호흡> 카테고리에서는 사용자님이 현재 수행하고 있는 호흡양상이 올바른지 판단하고, 잘못된 호흡 방법이 신체에 어떤 영향을 미치는 지 알아보고, 올바른 호흡법을 숙지하고 실천하는 것을 목표로 합니다. \n \n 먼저, 사용자님의 호흡 상태를 분석해 보겠습니다. \n',
                        style: TextStyle(fontSize: 15, fontFamily: 'Samanco'),
                      ),
                      Image.asset(
                        'lib/app/images/toRead/breath1/breathe_1_1.gif',
                        height: 210,
                      ),
                      Text(
                        '\n 위의 사진과 같이 우선 바닥에 편하게 누워 주시고, 배꼽 위에 핸드폰을 올려둔 뒤 핸드폰을 바라본 채로 호흡해 주시기 바랍니다. \n',
                        style: TextStyle(fontSize: 15, fontFamily: 'Samanco'),
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
                        '어떤가요? \n혹시 핸드폰이 숨을 마시고 내쉼에 따라 움직였나요? 아니면 움직이지 않았나요? \n \n들숨 시 핸드폰이 올라가지 않았다면 사용자님은 <가슴호흡>을 하고 계실 가능성이 높습니다. \n들숨 시에는 핸드폰이 올라갔지만, 날숨 시 핸드폰이 따라 내려갔다면, 사용자님은 <복식호흡>을 하고 계실 가능성이 높습니다. \n들숨 시 핸드폰이 올라갔고, 날숨 시 핸드폰의 위치가 어느정도 유지되었다면, 사용자님은 <복압호흡>을 하고 계실 가능성이 높습니다.',
                        style: TextStyle(fontSize: 15, fontFamily: 'Samanco'),
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
                        '다른 방법을 사용해 보겠습니다. \n이번엔 서거나 앉은 상태에서, 편하게 숨을 마셔보겠습니다. \n숨을 충분히 마신 상태에서 숨을 잠시 참고, 명치 부근의 뼈(복장뼈의 하단 끝)과 양 갈비뼈의 끝을 잇는 가상의 선을 그려보겠습니다.',
                        style: TextStyle(fontSize: 15, fontFamily: 'Samanco'),
                      ),
                      //image 필요한가?
                      Text(
                        '\n 두 선이 90도를 넘는다면, 사용자님은 <가슴호흡>을 하고 계신 겁니다.',
                        style: TextStyle(fontSize: 15, fontFamily: 'Samanco'),
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
                        '마지막으로 사용자님이 알고 계신 배호흡을 시행해 주시기 바랍니다. \n배호흡을 시행하며, 사용자님의 배가 움직이는 양상을 관찰하여 주시기 바랍니다.  \n \n숨을 마시면서 부풀었던 배가, 숨을 내쉬면서 가라앉았나요? 아니면 유지되었나요?  \n가라앉았다면 사용자님은 <복식호흡>을, 유지되었다면 사용자님은 <복압호흡>을 하고 계신 겁니다. \n\n ',
                        style: TextStyle(fontSize: 20, fontFamily: 'Samanco'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('가슴호흡 장면', style: TextStyle(fontSize:23, fontFamily: 'Samanco_bold'),),
                              Text('어깨와 가슴이 들린다.', style: TextStyle(fontSize:20, fontFamily: 'Samanco'),),

                              Image.asset(
                                'lib/app/images/toRead/breath1/breathe_1_2.gif',
                                height: 280,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('복식호흡 장면', style: TextStyle(fontSize:23, fontFamily: 'Samanco_bold'),),
                              Text('복부 움직임에 주목하자', style: TextStyle(fontSize:20, fontFamily: 'Samanco'),),
                              Image.asset(
                                'lib/app/images/toRead/breath1/breathe_1_3.gif',
                                height: 280,
                              ),
                            ],
                          ),
                        ],
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
                        '과연 <가슴호흡>, <복식호흡>, <복압호흡>이란 무엇이며, 우리는 무슨 호흡을 해야 할까요?  \n앞으로의 교육에서는 어떤 호흡이 허리 통증 완화에 이상적인 호흡 방법인지, 다른 호흡 방법은 왜 문제가 되는지 살펴보겠습니다.\n \n핵심 내용 정리 \n현재 나의 호흡 방법을 파악해보자!',
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
