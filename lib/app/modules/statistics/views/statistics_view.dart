import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../controllers/statistics_controller.dart';

class StatisticsView extends GetView<StatisticsController> {
  StatisticsView({Key? key}) : super(key: key);
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    StatisticsController controller2 = Get.put(StatisticsController());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton:
      FirebaseAuth.instance.currentUser == null
      ? FloatingActionButton.extended(
          label:Text('로그인 필요', style: TextStyle(fontSize: 15, fontFamily: 'Samanco'),),
        onPressed:(){}
      )
            : FloatingActionButton.extended(
        onPressed: () {
          controller2.updateLog();
        },
        label:Text('새로고침', style: TextStyle(fontSize: 15, fontFamily: 'Samanco'),),
        icon: Icon(Icons.restart_alt),
        backgroundColor: Colors.pink,
      ),
      body: FirebaseAuth.instance.currentUser == null
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                '통계 기능은 회원가입 후 이용해주시기 바랍니다.',
                style: TextStyle(fontFamily: 'Samanco', fontSize: 20),
              ),
            )
          ],
        ),
      )
          : GetBuilder<StatisticsController>(builder: (context) {
        return Padding(
          padding: EdgeInsets.all(100),
          child:
          SfSparkLineChart.custom(
            color: Colors.indigo,
            axisCrossesAt: 10,
            labelStyle:
            TextStyle(fontFamily: 'Samanco', fontSize: 10),
            labelDisplayMode: SparkChartLabelDisplayMode.all,
            trackball: const SparkChartTrackball(
                activationMode: SparkChartActivationMode.tap),
            marker: const SparkChartMarker(
                displayMode: SparkChartMarkerDisplayMode.all),
            xValueMapper: (int index) {
              return DateTime(
                int.parse(controller2.currentLog[index].date!
                    .substring(0, 4)),
                int.parse(controller2.currentLog[index].date!
                    .substring(4, 6)),
                int.parse(controller2.currentLog[index].date!
                    .substring(6, 8)),
                int.parse(controller2.currentLog[index].dateTime!
                    .substring(0, 2)),
                int.parse(controller2.currentLog[index].dateTime!
                    .substring(2, 4)),
              );
            },
            yValueMapper: (int index) {
              return controller2.currentLog[index].task! == 1
                  ? 0.15
                  : controller2.currentLog[index].task! == 2
                  ? 0.31
                  : controller2.currentLog[index].task! == 3
                  ? 0.45
                  : controller2.currentLog[index].task! == 4
                  ? 1.0
                  : controller2.currentLog[index].task! ==
                  5
                  ? 1.31
                  : controller2.currentLog[index]
                  .task! ==
                  6
                  ? 1.45
                  : controller2.currentLog[index]
                  .task! ==
                  7
                  ? 2.15
                  : controller2
                  .currentLog[
              index]
                  .task! ==
                  8
                  ? 2.31
                  : controller2
                  .currentLog[
              index]
                  .task! ==
                  9
                  ? 2.45
                  : controller2
                  .currentLog[
              index]
                  .task! ==
                  10
                  ? 3.15
                  : controller2
                  .currentLog[index]
                  .task! ==
                  11
                  ? 3.31
                  : controller2.currentLog[index].task! == 12
                  ? 4.0
                  : controller2.currentLog[index].task! == 13
                  ? 4.15
                  : controller2.currentLog[index].task! == 14
                  ? 4.45
                  : controller2.currentLog[index].task! == 15
                  ? 5.11
                  : controller2.currentLog[index].task! == 16
                  ? 5.21
                  : controller2.currentLog[index].task! == 17
                  ? 5.45
                  : controller2.currentLog[index].task! == 18
                  ? 5.55
                  : controller2.currentLog[index].task! == 19
                  ? 7.15
                  : controller2.currentLog[index].task! == 20
                  ? 7.21
                  : controller2.currentLog[index].task! == 21
                  ? 7.31
                  : controller2.currentLog[index].task! == 22
                  ? 7.41
                  : controller2.currentLog[index].task! == 23
                  ? 7.51
                  : controller2.currentLog[index].task! == 24
                  ? 8.1
                  : controller2.currentLog[index].task! == 25
                  ? 8.15
                  : controller2.currentLog[index].task! == 26
                  ? 8.21
                  : controller2.currentLog[index].task! == 27
                  ? 8.35
                  : controller2.currentLog[index].task! == 28
                  ? 8.41
                  : controller2.currentLog[index].task! == 29
                  ? 8.55
                  : controller2.currentLog[index].task! == 30
                  ? 9.0
                  : controller2.currentLog[index].task! == 31
                  ? 9.15
                  : controller2.currentLog[index].task! > 31
                  ? 9.31
                  : 0;
            },
            dataCount: controller2.currentLog.length,
          ),
        );
      }

      ),);
  }

//   LineChartData mainData() {
//     return LineChartData(
//       gridData: FlGridData(
//         show: true,
//         drawVerticalLine: true,
//         horizontalInterval: 1,
//         verticalInterval: 1,
//         getDrawingHorizontalLine: (value) {
//           return FlLine(
//             color: const Color(0xff37434d),
//             strokeWidth: 1,
//           );
//         },
//         getDrawingVerticalLine: (value) {
//           return FlLine(
//             color: const Color(0xff37434d),
//             strokeWidth: 1,
//           );
//         },
//       ),
//       titlesData: FlTitlesData(
//         show: true,
//         rightTitles: AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         topTitles: AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         bottomTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             reservedSize: 30,
//             interval: 1,
//             getTitlesWidget: bottomTitleWidgets,
//           ),
//         ),
//         leftTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             interval: 1,
//             getTitlesWidget: leftTitleWidgets,
//             reservedSize: 42,
//           ),
//         ),
//       ),
//       borderData: FlBorderData(
//         show: true,
//         border: Border.all(color: const Color(0xff37434d)),
//       ),
//       minX: 0,
//       // maxX: 11,
//       minY: 0,
//       maxY: 10,
//       lineBarsData: [
//         LineChartBarData(
//           spots: const [
//             FlSpot(0, 3),
//             FlSpot(2.6, 2),
//             FlSpot(4.9, 5),
//             FlSpot(6.8, 3.1),
//             FlSpot(8, 4),
//             FlSpot(9.5, 3),
//             FlSpot(11, 4),
//           ],
//           isCurved: true,
//           gradient: LinearGradient(
//             colors: gradientColors,
//           ),
//           barWidth: 5,
//           isStrokeCapRound: true,
//           dotData: FlDotData(
//             show: false,
//           ),
//           belowBarData: BarAreaData(
//             show: true,
//             gradient: LinearGradient(
//               colors: gradientColors
//                   .map((color) => color.withOpacity(0.3))
//                   .toList(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget bottomTitleWidgets(double value, TitleMeta meta) {
//     const style = TextStyle(
//       color: Color(0xff68737d),
//       fontWeight: FontWeight.bold,
//       fontSize: 16,
//     );
//     Widget text;
//     switch (value.toInt()) {
//       case 2:
//         text = const Text('MAR', style: style);
//         break;
//       case 5:
//         text = const Text('JUN', style: style);
//         break;
//       case 8:
//         text = const Text('SEP', style: style);
//         break;
//       default:
//         text = const Text('', style: style);
//         break;
//     }
//
//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       child: text,
//     );
//   }
//
//   Widget leftTitleWidgets(double value, TitleMeta meta) {
//     const style = TextStyle(
//       color: Color(0xff67727d),
//       fontWeight: FontWeight.bold,
//       fontSize: 15,
//     );
//     String text;
//     switch (value.toInt()) {
//       case 3:
//         text = '1분';
//         break;
//       case 11:
//         text = '4분';
//         break;
//       case 23:
//         text = '8분';
//         break;
//       default:
//         return Container();
//     }
//
//     return Text(text, style: style, textAlign: TextAlign.left);
//   }
}
