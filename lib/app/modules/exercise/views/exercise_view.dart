import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbp_web/app/modules/exercise/controllers/exercise_controller.dart';

import 'package:lbp_web/app/modules/exercise/views/exercise_list_main/toexercise.dart';
import 'package:lbp_web/app/modules/exercise/views/exercise_list_main/toexercise_item.dart';
import 'package:lbp_web/app/modules/exerciseDetails2/views/exercise_details2_view.dart';
import 'package:lbp_web/app/modules/exercise_details/views/exercise_details_view.dart';

class ExerciseView extends StatefulWidget {
  ExerciseView({Key? key}) : super(key: key);

  // final toExerciseList = ToExercise.toexerciseList();

  @override
  State<ExerciseView> createState() => _ExerciseViewState();
}

class _ExerciseViewState extends State<ExerciseView> {
  final toExerciseList = ToExercise.toexerciseList();
  List<ToExercise> _foundToExercise = [];

  @override
  void initState() {
    _foundToExercise = toExerciseList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ListTile(
                            title: Text(
                              '오늘의 운동 리스트',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontFamily: 'NsHeavy'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        for (ToExercise toExercise2 in _foundToExercise)
                          ToExerciseItem(
                            toExercise: toExercise2,
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: totalTime(context),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              flex: 1,
                              child: exerciseWidget(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget totalTime(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[200]),
      height: 70,
      width: 200,
      child: Center(
        child: Text(
          '총 시간 : 9분 30초',
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontFamily: 'Samanco_bold'),
        ),
      ),
    );
  }

  Widget exerciseWidget(BuildContext context) {
    ExerciseController controller2 = Get.put(ExerciseController());
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.green,
        minimumSize: Size(90, 70),
        maximumSize: Size(90, 70),
      ),
      child: Center(
        child: Text(
          '시작하기',
          style: TextStyle(fontSize: 30, fontFamily: 'Samanco_bold'),
        ),
      ),
      onPressed: () {
        if (controller2.auth == null) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ExerciseDetails2View()));
        } else {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ExerciseDetailsView()));
        }
      },
    );
  }
}
