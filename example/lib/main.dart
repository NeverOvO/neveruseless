import 'package:example/example_neverBus.dart';
import 'package:flutter/material.dart';

import 'aboutNever.dart';
import 'example_neverLocalStorage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("测试样例"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 30,),
          GestureDetector(
            child: myButton("neverBus 全局类通知"),
            behavior: HitTestBehavior.opaque,
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new ExampleNeverBusView()),);
            },
          ),
          SizedBox(height: 30,),
          GestureDetector(
            child: myButton("neverLocalStorage 本地缓存"),
            behavior: HitTestBehavior.opaque,
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new ExampleNeverLocalStorageView()),);
            },
          ),
          SizedBox(height: 30,),
          GestureDetector(
            child: myButton("关于我"),
            behavior: HitTestBehavior.opaque,
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new AboutNeverView()),);
            },
          ),
        ],
      ),
    );
  }

}

Widget myButton(String title){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      //边框圆角设置
      border: Border.all(width: 1, color: Color.fromRGBO(15, 159, 131, 1)),
      borderRadius: BorderRadius.all(Radius.circular(3.0)),
    ),
    child: Text(title,style: TextStyle(color: Colors.black),),
    alignment: Alignment.center,
    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
  );
}