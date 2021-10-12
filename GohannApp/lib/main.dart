import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _returnText = "お腹へったンゴｵｵｵｫｫｫｫ!!!!!!!!!!";
  double centerFontSize = 20.0;

  List<String> _gohanList = [
    "お寿司",
    "うまや",
    "ハンバーグ",
    "マクドナルド",
    "モスバーガー",
    "お肉",
    "牛丼",
    "ガスト",
    "ロイホ",
    "うどん・そば",
    "カレー",
    "来来亭",
    "ラーメン",
    "あみやき亭",
    "和食",
    "イオンのフードコート",
    "バイキング",
    "パスタ",
    "ミラノ風ドリア",
    "お好み焼き風グラタン"
  ];

  @override
  Widget build(BuildContext context) {
    var _appBar = AppBar(
      title: const Text('auau'),
      automaticallyImplyLeading: false,
    );
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var bodyHeight = deviceHeight - _appBar.preferredSize.height;
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      // appBar: _appBar,
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: deviceHeight * 0.3333333,
            child: Center(
              child: SizedBox(
                height: 800, // Widgetの高さを指定
                width: deviceWidth, // Widgetの幅を指定
                child: RaisedButton(
                    child: const Text(
                      '今日のご飯は・・・・・',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                    textColor: Colors.lightGreen,
                    onPressed: () {

                    }),
              ),
            ),
          ),
          Container(
            color: Colors.lightGreen,
            height: deviceHeight * 0.3333333,
            child: Center(
              child: Text(
                _returnText,
                style: TextStyle(
                    fontSize: centerFontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: deviceHeight * 0.3333333,
            child: Center(
              child: SizedBox(
                height: 800, // Widgetの高さを指定
                width: deviceWidth, // Widgetの幅を指定
                child: RaisedButton(
                    child: const Text(
                      'セイｯ！！！！！！！！！！',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                    textColor: Colors.lightGreen,
                    onPressed: () {
                      _gohanList.shuffle();
                      setState(() {
                        centerFontSize = 40;

                        _returnText = _gohanList[0];

                      });
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*  onPressed: () {
                  if (i == _gohanList.length) {
                    _gohanList.shuffle();
                    i = 0;
                  }
                  setState(() {
                    centerFontSize = 40;

                    _returnText = _gohanList[i];
                    i++;
                  });
                },*/
