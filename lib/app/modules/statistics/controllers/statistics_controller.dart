import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lbp_web/app/data/models/log_model.dart';
import 'package:lbp_web/app/data/providers/log_provider.dart';

class StatisticsController extends GetxController {
  //TODO: Implement StatisticsController
  FirebaseAuth auth = FirebaseAuth.instance;
  LogProvider logProvider = LogProvider();
  List<Log> currentLog = [];
  Map<String, String> fetchedLog = {};
  // var toUseLog = fetchedLog
  // void fetchingLog(index){
  //   currentLog.forEach((element) {})
  // }
  // var logData = [];
void updateLog()async{
  if(auth.currentUser !=null) {
    currentLog = await logProvider.findLog(auth.currentUser!.uid);
  } else null;
  update();
}

  @override
  void onInit() async {
    if(auth.currentUser !=null) {
      currentLog = await logProvider.findLog(auth.currentUser!.uid);
    } else null;
    super.onInit();
    update();
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
