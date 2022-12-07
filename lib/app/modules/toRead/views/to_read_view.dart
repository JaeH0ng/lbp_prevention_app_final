import 'package:flutter/material.dart';
import 'package:lbp_web/app/modules/toRead/views/forReading/forReading.dart';
import 'package:lbp_web/app/modules/toRead/views/forReading/forReadingItems.dart';

class ToReadView extends StatefulWidget {
  ToReadView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ToReadViewState();
}

class _ToReadViewState extends State<ToReadView> {
  final forReadingsList = ForReading.forReadingList();

  List<ForReading> _foundForReading = [];

  @override
  void initState() {
    _foundForReading = forReadingsList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 10,
            ),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    key: const PageStorageKey<String>('toRead1'),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          '전체 교육자료',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'NsHeavy'
                          ),
                        ),
                      ),
                      for (ForReading forReading2 in _foundForReading)
                        ForReadingItems(
                          forReading: forReading2,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _runFilter(String enteredKeyword) {
    List<ForReading> results = [];
    if (enteredKeyword.isEmpty) {
      results = forReadingsList;
    } else {
      results = forReadingsList
          .where((item) =>
          item.realText!.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundForReading = results;
    });
  }
  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        // inputFormatters: [
        //   FilteringTextInputFormatter(
        //     RegExp('[a-z A-Z ㄱ-ㅎ|가-힣|·|：]'),
        //     allow: true,
        //   )
        // ],
        onChanged: (value) => _runFilter(value),
        //채팅창 만드는 부분
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          prefixIcon: Icon(
            //채팅창 내부에 돋보기 아이콘 추가하기
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: ' 검색하기',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ),
    );
  }
}


