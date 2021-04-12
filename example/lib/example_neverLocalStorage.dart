import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neveruseless/neveruseless.dart';

import 'main.dart';
class ExampleNeverLocalStorageView extends StatefulWidget {
  final arguments;
  const ExampleNeverLocalStorageView({Key? key, this.arguments}) : super(key: key);

  @override
  _ExampleNeverLocalStorageViewState createState() => _ExampleNeverLocalStorageViewState();
}

class _ExampleNeverLocalStorageViewState extends State<ExampleNeverLocalStorageView> {

  String _message = '';
  TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text("本地缓存"),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(15, 159, 131, 1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(15, 159, 131, 1)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  ),
                  hintText: '请输入',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                ),
                controller: _textController,
                autocorrect:false,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black,fontSize: 20),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                child: myButton("保存输入框内容到本地缓存"),
                behavior: HitTestBehavior.opaque,
                onTap: () async{
                  neverLocalStorageWrite("thisFlag", _textController.text);
                },
              ),
              SizedBox(height: 30,),
              GestureDetector(
                child: myButton("读取本地缓存"),
                behavior: HitTestBehavior.opaque,
                onTap: () async{
                  var _messageT = await neverLocalStorageRead("thisFlag");
                  _message = _messageT.toString();
                  print(_message);
                  setState(() {

                  });
                },
              ),
              Container(
                child: Text(_message,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                child: myButton("删除本地缓存"),
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  neverLocalStorageRemove('thisFlag');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}