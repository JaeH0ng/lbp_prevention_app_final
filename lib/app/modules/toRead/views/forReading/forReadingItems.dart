import 'package:flutter/material.dart';
import 'package:lbp_web/app/modules/toRead/views/forReading/forReading.dart';
import 'package:lbp_web/app/modules/toRead1/views/to_read1_view.dart';
import 'package:lbp_web/app/modules/toRead10/views/to_read10_view.dart';
import 'package:lbp_web/app/modules/toRead11/views/to_read11_view.dart';
import 'package:lbp_web/app/modules/toRead12/views/to_read12_view.dart';
import 'package:lbp_web/app/modules/toRead13/views/to_read13_view.dart';
import 'package:lbp_web/app/modules/toRead2/views/to_read2_view.dart';
import 'package:lbp_web/app/modules/toRead3/views/to_read3_view.dart';
import 'package:lbp_web/app/modules/toRead4/views/to_read4_view.dart';
import 'package:lbp_web/app/modules/toRead5/views/to_read5_view.dart';
import 'package:lbp_web/app/modules/toRead6/views/to_read6_view.dart';
import 'package:lbp_web/app/modules/toRead7/views/to_read7_view.dart';
import 'package:lbp_web/app/modules/toRead8/views/to_read8_view.dart';
import 'package:lbp_web/app/modules/toRead9/views/to_read9_view.dart';

class ForReadingItems extends StatelessWidget {
  final ForReading forReading;

  const ForReadingItems({Key? key, required this.forReading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7),
      child: ListTile(
        key: const PageStorageKey<String>('toRead1_13'),
        onTap: () {
          if (forReading.id == '01') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead1View()));
          } else if (forReading.id == '02') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead2View()));
          } else if (forReading.id == '03') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead3View()));
          } else if (forReading.id == '04') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead4View()));
          } else if (forReading.id == '05') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead5View()));
          } else if (forReading.id == '06') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead6View()));
          } else if (forReading.id == '07') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead7View()));
          } else if (forReading.id == '08') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead8View()));
          } else if (forReading.id == '09') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead9View()));
          } else if (forReading.id == '10') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead10View()));
          } else if (forReading.id == '11') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead11View()));
          } else if (forReading.id == '12') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead12View()));
          } else if (forReading.id == '13') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToRead13View()));
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: Colors.white,
        leading: forReading.isTitle == true
            ? null
            : Icon(
                Icons.source,
                color: Colors.indigo,
                size: 30,
              ),
        title: Text(
          forReading.toReadText!,
          style: forReading.isTitleText == true
              ? TextStyle(
                  fontSize: 25, color: Colors.black, fontFamily: 'Samanco_bold')
              : TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Samanco',
                ),
        ),
      ),
    );
  }
}
