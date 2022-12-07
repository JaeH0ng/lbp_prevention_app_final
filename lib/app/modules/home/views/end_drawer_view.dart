import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbp_web/app/modules/home/controllers/bird_dog5_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/bridge6_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/cobra7_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/dead_bug1_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/stretching8_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/stretching_illiopsoas4_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/superman3_controller.dart';
import 'package:lbp_web/app/modules/home/controllers/trunk_curl_sit_up2_controller.dart';

class EndDrawerView extends GetView {
  EndDrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DeadBug1Controller first = Get.find<DeadBug1Controller>();
    final TrunkCurlSitUp2Controller second = Get.find<TrunkCurlSitUp2Controller>();
    final Superman3Controller third = Get.find<Superman3Controller>();
    final StretchingIlliopsoas4Controller fourth =
    Get.find<StretchingIlliopsoas4Controller>();
    final BirdDog5Controller fifth = Get.find<BirdDog5Controller>();
    final Bridge6Controller sixth = Get.find<Bridge6Controller>();
    final Cobra7Controller seventh = Get.find<Cobra7Controller>();
    final Stretching8Controller eighth = Get.find<Stretching8Controller>();
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.grey[200],
        width: 325,
        child: ListView(
          key: const PageStorageKey<String>('drawer'),
          padding: EdgeInsets.zero,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent,
              ),
              child: Container(
                height: 90,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.feedback_outlined,
                        size: 45,
                        color: Colors.white,
                      ),
                      Text(
                        '  about 운동프로그램',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[200],
                            fontFamily: 'Samanco_bold'
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    '${first.information["actionImage"]}',
                    height: 120,
                    fit: BoxFit.fitWidth,
                  ),
                  ExpansionTile(
                    key: const PageStorageKey<String>('toRead1'),
                    tilePadding: EdgeInsets.only(left: 20, right: 20),
                    backgroundColor: Colors.grey[200],
                    leading: const Icon(
                      Icons.menu_book,
                      size: 35,
                    ),
                    title: Text(
                      '${first.information['name']}',
                      style: TextStyle(fontSize: 17, fontFamily: 'Samanco'),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead1_1'),
                        leading: Text(
                          '방법',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${first.information['method']}', style: TextStyle( fontFamily: 'Samanco'),),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        isThreeLine: true,
                        key: const PageStorageKey<String>('toRead1_2'),
                        leading: Text(
                          '효과',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${first.information['effect1']}', style: TextStyle( fontFamily: 'Samanco'),),
                        subtitle: Text(
                          '${first.information['effect2']}\n${first.information['effect3']}',
                          style: TextStyle(color: Colors.black,  fontFamily: 'Samanco'),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead1_3'),
                        leading: Text(
                          '근육',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${first.information['majorMuscle']}', style: TextStyle( fontFamily: 'Samanco'),),
                        children: [
                          Text(
                            '사진 출처 : ${first.information["reference_image"]}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey, fontFamily: 'Samanco'
                            ),
                          ),
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead1_4_1'),
                            title: Text(
                              '    복직근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${first.information["majorMuscleImage1"]}',
                                  height: 500,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead1_4_2'),
                            title: Text(
                              '    외복사근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${first.information["majorMuscleImage2"]}',
                                  height: 500,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead1_4_3'),
                            title: Text(
                              '    내복사근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${first.information["majorMuscleImage3"]}',
                                  height: 500,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead1_5'),
                        title: Text(
                          '출처',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            key: const PageStorageKey<String>('toRead1_6'),
                            title: Text(
                              '${first.information['reference_1']} \n${first.information['reference_2']} \n${first.information['reference_3']} \n${first.information['reference_image']} \n${first.information['reference_image2']}',
                              style: TextStyle(fontSize: 12,  fontFamily: 'Samanco'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ), //1. dead bug
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    '${second.information["actionImage"]}',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  ExpansionTile(
                    key: const PageStorageKey<String>('toRead2'),
                    tilePadding: EdgeInsets.only(left: 20, right: 20),
                    backgroundColor: Colors.grey[200],
                    leading: const Icon(
                      Icons.menu_book,
                      size: 35,
                    ),
                    title: Text(
                      '${second.information['name']}',
                      style: TextStyle(fontSize: 17,  fontFamily: 'Samanco'),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead2_1'),
                        leading: Text(
                          '방법',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${second.information['method']}', style: TextStyle( fontFamily: 'Samanco'),),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead2_2'),
                        leading: Text(
                          '효과',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${second.information['effect1']}', style: TextStyle( fontFamily: 'Samanco'),),
                        subtitle: Text(
                          '${second.information['effect2']}',
                          style: TextStyle(color: Colors.black,  fontFamily: 'Samanco'),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead2_3'),
                        leading: Text(
                          '근육',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${second.information['majorMuscle']}', style: TextStyle( fontFamily: 'Samanco'),),
                        children: [
                          ListTile(
                            key: const PageStorageKey<String>('toRead2_4'),
                            title: SizedBox(
                              child: Image.asset(
                                '${second.information["majorMuscleImage"]}',
                                height: 250,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Text(
                            '출처 : ${second.information["reference_image"]}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey, fontFamily: 'Samanco'
                            ),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead2_5'),
                        title: Text(
                          '출처',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            key: const PageStorageKey<String>('toRead2_6'),
                            title: Text(
                              '${second.information['reference_1']} \n${second.information['reference_2']}\n${second.information['reference_image']}',
                              style: TextStyle(fontSize: 12,  fontFamily: 'Samanco'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ), //2. trunk curl sit up
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Image.asset(
                      '${third.information["actionImage"]}',
                      height: 100,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  ExpansionTile(
                    key: const PageStorageKey<String>('toRead3'),
                    tilePadding: EdgeInsets.only(left: 20, right: 20),
                    backgroundColor: Colors.grey[200],
                    leading: const Icon(
                      Icons.menu_book,
                      size: 35,
                    ),
                    title: Text(
                      '${third.information['name']}',
                      style: TextStyle(fontSize: 17,  fontFamily: 'Samanco'),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead3_1'),
                        leading: Text(
                          '방법',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${third.information['method']}', style: TextStyle( fontFamily: 'Samanco'),),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead3_2'),
                        leading: Text(
                          '효과',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${third.information['effect1']}', style: TextStyle( fontFamily: 'Samanco'),),
                        subtitle: Text(
                          '${third.information['effect2']}',
                          style: TextStyle(color: Colors.black,  fontFamily: 'Samanco'),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead3_3'),
                        leading: Text(
                          '근육',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${third.information['majorMuscle']}', style: TextStyle( fontFamily: 'Samanco'),),
                        children: [
                          ListTile(
                            key: const PageStorageKey<String>('toRead3_4'),
                            title: SizedBox(
                              child: Image.asset(
                                '${third.information["majorMuscleImage"]}',
                                height: 500,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Text(
                            '출처 : ${third.information["reference_image"]}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey, fontFamily: 'Samanco'
                            ),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead3_5'),
                        title: Text(
                          '출처',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            key: const PageStorageKey<String>('toRead3_6'),
                            title: Text(
                              '${third.information['reference_1']} \n${third.information['reference_2']} \n${third.information['reference_image']}',
                              style: TextStyle(fontSize: 12,  fontFamily: 'Samanco'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ), //3. superman
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 300,
                    width: 320,
                    child: Image.asset(
                      '${fourth.information["actionImage"]}',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ExpansionTile(
                    key: const PageStorageKey<String>('toRead4'),
                    tilePadding: EdgeInsets.only(left: 20, right: 20),
                    backgroundColor: Colors.grey[200],
                    leading: const Icon(
                      Icons.menu_book,
                      size: 35,
                    ),
                    title: Text(
                      '${fourth.information['name']}',
                      style: TextStyle(fontSize: 17,  fontFamily: 'Samanco'),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead4_1'),
                        leading: Text(
                          '방법',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${fourth.information['method']}', style: TextStyle( fontFamily: 'Samanco'),),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead4_2'),
                        leading: Text(
                          '효과',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${fourth.information['effect1']}', style: TextStyle( fontFamily: 'Samanco'),),
                        subtitle: Text(
                          '${fourth.information['effect2']}',
                          style: TextStyle(color: Colors.black,  fontFamily: 'Samanco'),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead4_3'),
                        leading: Text(
                          '근육',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${fourth.information['majorMuscle']}', style: TextStyle( fontFamily: 'Samanco'),),
                        children: [
                          ListTile(
                            key: const PageStorageKey<String>('toRead4_4'),
                            title: SizedBox(
                              child: Image.asset(
                                '${fourth.information["majorMuscleImage"]}',
                                height: 500,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            '출처 : ${fourth.information["reference_image"]}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey, fontFamily: 'Samanco'
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead4_5'),
                        title: Text(
                          '출처',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            key: const PageStorageKey<String>('toRead4_6'),
                            title: Text(
                              '${fourth.information['reference_1']} \n${fourth.information['reference_2']} \n${fourth.information['reference_image']}',
                              style: TextStyle(fontSize: 12,  fontFamily: 'Samanco'),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 5,
                        height: 3,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ), //4. 장요근 늘리기
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    '${fifth.information["actionImage"]}',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  ExpansionTile(
                    key: const PageStorageKey<String>('toRead5'),
                    tilePadding: EdgeInsets.only(left: 20, right: 20),
                    backgroundColor: Colors.grey[200],
                    leading: const Icon(
                      Icons.menu_book,
                      size: 35,
                    ),
                    title: Text(
                      '${fifth.information['name']}',
                      style: TextStyle(fontSize: 17,  fontFamily: 'Samanco'),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead5_1'),
                        leading: Text(
                          '방법',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${fifth.information['method']}', style: TextStyle( fontFamily: 'Samanco'),),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead5_2'),
                        leading: Text(
                          '효과',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${fifth.information['effect1']}'),
                        subtitle: Text(
                          '${fifth.information['effect2']}',
                          style: TextStyle(color: Colors.black,  fontFamily: 'Samanco'),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead5_3'),
                        leading: Text(
                          '근육',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${fifth.information['majorMuscle']}'),
                        children: [
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead5_4_1'),
                            title: Text(
                              '    내복사근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${fifth.information["majorMuscleImage1"]}',
                                  height: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '사진 출처 : ${fifth.information["reference_image"]}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey, fontFamily: 'Samanco'
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead5_4_2'),
                            title: Text(
                              '    척추기립근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${fifth.information["majorMuscleImage2"]}',
                                  height: 400,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Text(
                                '사진 출처 : ${fifth.information["reference_image2"]}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey, fontFamily: 'Samanco'
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead5_5'),
                        title: Text(
                          '출처',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            key: const PageStorageKey<String>('toRead5_6'),
                            title: Text(
                              '${fifth.information['reference_1']} \n${fifth.information['reference_image']} \n${fifth.information['reference_image2']}',
                              style: TextStyle(fontSize: 12,  fontFamily: 'Samanco'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ), //5. bird dog
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    '${sixth.information["actionImage"]}',
                    height: 150,
                    fit: BoxFit.fitWidth,
                  ),
                  ExpansionTile(
                    key: const PageStorageKey<String>('toRead6'),
                    tilePadding: EdgeInsets.only(left: 20, right: 20),
                    backgroundColor: Colors.grey[200],
                    leading: const Icon(
                      Icons.menu_book,
                      size: 35,
                    ),
                    title: Text(
                      '${sixth.information['name']}',
                      style: TextStyle(fontSize: 17,  fontFamily: 'Samanco'),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        isThreeLine: true,
                        key: const PageStorageKey<String>('toRead6_1'),
                        leading: Text(
                          '방법',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${sixth.information['method']}', style: TextStyle( fontFamily: 'Samanco'),),
                        subtitle: Text(
                          '${sixth.information['method2']}',
                          style: TextStyle(fontSize: 13,  fontFamily: 'Samanco'),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead6_2'),
                        leading: Text(
                          '효과',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${sixth.information['effect']}', style: TextStyle( fontFamily: 'Samanco'),),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead6_3'),
                        leading: Text(
                          '근육',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${sixth.information['majorMuscle']}', style: TextStyle( fontFamily: 'Samanco'),),
                        children: [
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead6_4_1'),
                            title: Text(
                              '    횡복근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${sixth.information["majorMuscleImage1"]}',
                                  height: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '${sixth.information["reference_image"]}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey, fontFamily: 'Samanco'
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead6_4_2'),
                            title: Text(
                              '    외복사근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${sixth.information["majorMuscleImage2"]}',
                                  height: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '${sixth.information["reference_image"]}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey, fontFamily: 'Samanco'
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead6_4_3'),
                            title: Text(
                              '    내복사근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${sixth.information["majorMuscleImage3"]}',
                                  height: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '${sixth.information["reference_image"]}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey, fontFamily: 'Samanco'
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead6_5'),
                        title: Text(
                          '출처',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            key: const PageStorageKey<String>('toRead6_6'),
                            title: Text(
                              '${sixth.information['reference_1']} \n${sixth.information['reference_2']} \n${sixth.information['reference_image']}',
                              style: TextStyle(fontSize: 12,  fontFamily: 'Samanco'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ), //6. bridge
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    '${seventh.information["actionImage"]}',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  ExpansionTile(
                    key: const PageStorageKey<String>('toRead7'),
                    tilePadding: EdgeInsets.only(left: 20, right: 20),
                    backgroundColor: Colors.grey[200],
                    leading: const Icon(
                      Icons.menu_book,
                      size: 35,
                    ),
                    title: Text(
                      '${seventh.information['name']}',
                      style: TextStyle(fontSize: 17,  fontFamily: 'Samanco'),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead7_1'),
                        leading: Text(
                          '방법',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${seventh.information['method']}', style: TextStyle( fontFamily: 'Samanco'),),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        isThreeLine: true,
                        key: const PageStorageKey<String>('toRead7_2'),
                        leading: Text(
                          '효과',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${seventh.information['effect1']}', style: TextStyle( fontFamily: 'Samanco'),),
                        subtitle: Text(
                          '${seventh.information['effect2']} \n ${seventh.information['effect3']}',
                          style: TextStyle(color: Colors.black,  fontFamily: 'Samanco'),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead7_3'),
                        leading: Text(
                          '근육',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${seventh.information['majorMuscle']}', style: TextStyle( fontFamily: 'Samanco'),),
                        children: [
                          ListTile(
                            key: const PageStorageKey<String>('toRead7_4'),
                            title: SizedBox(
                              child: Image.asset(
                                '${seventh.information["majorMuscleImage"]}',
                                height: 500,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            '출처 : ${seventh.information["reference_image"]}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey, fontFamily: 'Samanco'
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead7_5'),
                        title: Text(
                          '출처',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            key: const PageStorageKey<String>('toRead7_6'),
                            title: Text(
                              '${seventh.information['reference_1']} \n${seventh.information['reference_2']} \n${seventh.information['reference_image']}',
                              style: TextStyle(fontSize: 12,  fontFamily: 'Samanco'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ), //7. 코브라 운동
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 120,
                    width: 320,
                    child: Image.asset(
                      '${eighth.information["actionImage"]}',
                      height: 200,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  ExpansionTile(
                    key: const PageStorageKey<String>('toRead8'),
                    tilePadding: EdgeInsets.only(left: 20, right: 20),
                    backgroundColor: Colors.grey[200],
                    leading: const Icon(
                      Icons.menu_book,
                      size: 35,
                    ),
                    title: Text(
                      '${eighth.information['name']}',
                      style: TextStyle(fontSize: 15,  fontFamily: 'Samanco'),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead8_1'),
                        leading: Text(
                          '방법',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${eighth.information['method']}', style: TextStyle( fontFamily: 'Samanco'),),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ListTile(
                        key: const PageStorageKey<String>('toRead8_2'),
                        leading: Text(
                          '효과',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${eighth.information['effect1']}', style: TextStyle( fontFamily: 'Samanco'),),
                        subtitle: Text(
                          '${eighth.information['effect2']}',
                          style: TextStyle(color: Colors.black,  fontFamily: 'Samanco'),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead8_3'),
                        leading: Text(
                          '근육',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        title: Text('${eighth.information['majorMuscle']}', style: TextStyle( fontFamily: 'Samanco'),),
                        children: [
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead8_4_1'),
                            title: Text(
                              '    전반적인 허리근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${eighth.information["majorMuscleImage1"]}',
                                  height: 400,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Text(
                                '사진 출처 : ${eighth.information["reference_image"]}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey, fontFamily: 'Samanco'
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            key: const PageStorageKey<String>('toRead8_4_2'),
                            title: Text(
                              '    엉덩이근',
                              style: TextStyle(color: Colors.green,  fontFamily: 'Samanco'),
                            ),
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  '${eighth.information["majorMuscleImage2"]}',
                                  height: 400,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Text(
                                '사진 출처 : ${eighth.information["reference_image"]}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey, fontFamily: 'Samanco'
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.green,
                      ),
                      ExpansionTile(
                        key: const PageStorageKey<String>('toRead8_5'),
                        title: Text(
                          '출처',
                          style: TextStyle(
                            color: Colors.green, fontFamily: 'Samanco'
                          ),
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            key: const PageStorageKey<String>('toRead8_6'),
                            title: Text(
                              '${eighth.information['reference_1']} \n${eighth.information['reference_2']} \n${eighth.information['reference_image']}',
                              style: TextStyle(fontSize: 12,  fontFamily: 'Samanco'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ), //8. 누워서 무릎 갖다 대기
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
