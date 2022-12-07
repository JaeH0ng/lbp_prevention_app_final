import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/exercise_details_controller.dart';

class ExerciseDetailsView extends GetView<ExerciseDetailsController> {
  @override
  Widget build(BuildContext context) {
    // ExerciseDetailsController controller2 =
    //     Get.put(ExerciseDetailsController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.red,
          ),
          onPressed: () {
            controller.controller.pause();
            Navigator.of(context).pop();
            // showDialog(
            //   context: context,
            //   builder: (BuildContext context) {
            //     return AlertDialog(
            //       title: Text(
            //         '운동을 종료하시겠습니까?',
            //         style:
            //             TextStyle(color: Colors.black, fontFamily: 'Samanco'),
            //       ),
            //       actions: <Widget>[
            //         GestureDetector(
            //           onTap: () {
            //             Navigator.of(context).pop();
            //             Navigator.of(context).pop();
            //           },
            //           child: Text(
            //             '계속하기',
            //             style: TextStyle(
            //                 color: Colors.indigo, fontFamily: 'Samanco'),
            //           ),
            //         ),
            //         SizedBox(
            //           width: 10,
            //           height: 5,
            //         ),
            //         GestureDetector(
            //           onTap: () {
            //             controller.controller.pause();
            //             Navigator.of(context).pushAndRemoveUntil(
            //                 MaterialPageRoute(builder: (_) => HomeView()),
            //                     (route) => false);
            //           },
            //           child: Text(
            //             '종료하기',
            //             style:
            //                 TextStyle(color: Colors.red, fontFamily: 'Samanco'),
            //           ),
            //         ),
            //       ],
            //     );
            //   },
            // );
          }, //운동 종료 경고창
        ),
        title: Text(
          '오늘의 운동',
          style: TextStyle(
            fontFamily: 'Samanco',
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: GetBuilder(
        init: ExerciseDetailsController(),
        builder: (context) {
          return controller.initialyzing
              ? PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  itemCount: controller.actionExerciseList.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        color: Colors.grey[200],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              controller.actionExerciseList[index].name!,
                              style: TextStyle(
                                fontFamily: 'Samanco',
                                fontSize: 40,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            controller.actionExerciseList[index].isRest == true
                                ? Text(
                                    controller
                                        .actionExerciseList[index].message!,
                                    style: TextStyle(
                                      fontFamily: 'Samanco',
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ) // 휴식페이지의 경우, restMessage를 호출
                                : Text(''),
                            SizedBox(
                              height: 5,
                            ),
                            Image.asset(
                              controller.actionExerciseList[index].action_gif!,
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.9,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                  width: 0.5,
                                ),
                              ),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: controller.actionExerciseList[index]
                                          .isLastPage ==
                                      false
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '${controller.actionExerciseList[index].ordinalNumber!}/8 번째 운동 ',
                                                style: TextStyle(
                                                  fontFamily: 'Samanco',
                                                  fontSize: 25,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                controller
                                                            .actionExerciseList[
                                                                index]
                                                            .sets ==
                                                        null
                                                    ? ''
                                                    : 'Sets:${controller.actionExerciseList[index].sets!}',
                                                style: TextStyle(
                                                  fontFamily: 'Samanco',
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CircularCountDownTimer(
                                          textStyle: TextStyle(
                                            fontFamily: 'Samanco',
                                            fontSize: 35,
                                          ),
                                          isReverse: true,
                                          controller: controller.controller,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          duration: controller
                                              .actionExerciseList[index]
                                              .actingTime,
                                          fillColor: Colors.lightGreenAccent,
                                          ringColor: Colors.green,
                                          onComplete: controller.nextPage,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GreenButton(
                                                icon: Icons.pause,
                                                onPressed: () => controller
                                                    .controller
                                                    .pause(),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              GreenButton(
                                                icon: Icons.play_arrow,
                                                onPressed: () => controller
                                                    .controller
                                                    .resume(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                          Center(
                                            child: Text(
                                              '고생하셨습니다!',
                                              style: TextStyle(
                                                  fontFamily: 'Samanco_bold',
                                                  fontSize: 30),
                                            ),
                                          ),
                                        ]),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                );
        },
      ),
    );
  }
}

class GreenButton extends StatelessWidget {
  const GreenButton({Key? key, required this.icon, this.onPressed})
      : super(key: key);
  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height * 0.2;
    return Container(
      width: screenWidth * 0.1,
      height: screenHeight / 3,
      color: Colors.green,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}
