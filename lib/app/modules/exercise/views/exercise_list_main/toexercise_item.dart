import 'package:flutter/material.dart';
import 'package:lbp_web/app/modules/exercise/views/exercise_list_main/toexercise.dart';

class ToExerciseItem extends StatelessWidget {
  final ToExercise toExercise;

  const ToExerciseItem({
    Key? key,
    required this.toExercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding: toExercise.isType
              ? EdgeInsets.symmetric(horizontal: 5, vertical: 5)
              : EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          tileColor: toExercise.isType ? Colors.grey[200] : Colors.white,
          leading: toExercise.isType
              ? null
              : Text(
                  toExercise.leading!,
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontFamily: 'Samanco'),
                ),
          title: Text(
            toExercise.title!,
            style: toExercise.isType
                ? TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Samanco_bold')
                : TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontFamily: 'Samanco',
                  ),
          ),
          subtitle: toExercise.isType
              ? null
              : Text(
                  toExercise.timeAndRest!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Samanco',
                  ),
                ),
          trailing: toExercise.isType
              ? null
              : Container(
                  padding: EdgeInsets.all(5),
                  // margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  // decoration: BoxDecoration(
                  //   color: Colors.lightGreenAccent[200],
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  child: Text(
                    toExercise.sets!,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'Samanco',
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
