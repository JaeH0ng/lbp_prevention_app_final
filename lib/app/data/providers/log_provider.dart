import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:lbp_web/constants.dart';

import '../models/log_model.dart';

class LogProvider extends GetConnect {
  CollectionReference logRef =
      FirebaseFirestore.instance.collection(FirebaseConstants.log);

  // finished 안된 애들 가져오는 함수
  Future<Log> getLog(
    String id,
    DateTime date,
  ) async {
    String dateString =
        date.year.toString() + formatter.format(date.month) + formatter.format(date.day);
    String dateTime = formatter.format(date.hour) + formatter.format(date.minute);
    QuerySnapshot<Map<String, dynamic>> logDoc = await logRef
        .doc(id)
        .collection('data')
        .where("date", isEqualTo: dateString)
        .where("finished", isEqualTo: false)
        .get();
    Log log =
        Log(finished: false, task: 0, date: dateString, dateTime: dateTime);
    logDoc.docs!.forEach((element) {
      log = Log.fromJson(element.data());
    });

    return log;
  }

  //로그 유저아이디, date, 로그가 입력으로 주어질때 로그를 바꿔치기하는 함수
  Future<Log> setLog(String id, Log log) async {
    await logRef
        .doc(id)
        .collection('data')
        .doc(log!.date! + log!.dateTime!)
        .set(log.toJson());
    return log;//폭파방지
  }

//전체 로그 가져오기
  Future<List<Log>> findLog(String id) async {
    QuerySnapshot<Map<String, dynamic>> dayList =
        await logRef.doc(id).collection('data').get();
    final List<Log> logList = [];
    dayList.docs.forEach((element) {
      final Map<String, dynamic> k = element.data();
      Log log = Log.fromJson(k);
      logList.add(log);
    });
    return logList;
  }
  // 전체 로그의 task 변환기

}
