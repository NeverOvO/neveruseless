import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neveruseless/neveruseless.dart';

import 'main.dart';
class ExampleNeverFormatDateView extends StatefulWidget {
  final arguments;
  const ExampleNeverFormatDateView({Key? key, this.arguments}) : super(key: key);

  @override
  _ExampleNeverFormatDateViewState createState() => _ExampleNeverFormatDateViewState();
}

class _ExampleNeverFormatDateViewState extends State<ExampleNeverFormatDateView> {

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
          title: Text("13位时间戳转字符串"),
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
              Container(
                child: Text(_message,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                child: myButton("转换"),
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  _message = neverFormatDate(int.tryParse(_textController.text) ?? 0);
                  setState(() {

                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}