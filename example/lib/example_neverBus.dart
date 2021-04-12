import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neveruseless/neveruseless.dart';

import 'main.dart';
class ExampleNeverBusView extends StatefulWidget {
  final arguments;
  const ExampleNeverBusView({Key? key, this.arguments}) : super(key: key);

  @override
  _ExampleNeverBusViewState createState() => _ExampleNeverBusViewState();
}

class _ExampleNeverBusViewState extends State<ExampleNeverBusView> {

  int i = 0;

  @override
  void initState() {
    super.initState();
    neverBus.on('ExampleNeverBusOne', (object) {
      if(mounted){
        setState(() {
          i += 1;
        });
      }
    });

    neverBus.on('ExampleNeverBusTwo', (object) {
      if(mounted){
        setState(() {
          i -= 1;
        });
      }
    });
  }

  @override
  void dispose() {
    neverBus.off('ExampleNeverBusOne');
    neverBus.off('ExampleNeverBusTwo');
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
          title: Text("订阅通知"),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              GestureDetector(
                child: myButton("使用BUS传递通知----> +1"),
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  neverBus.emit("ExampleNeverBusOne");
                },
              ),
              SizedBox(height: 30,),
              GestureDetector(
                child: myButton("使用BUS传递通知----> -1"),
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  neverBus.emit("ExampleNeverBusTwo");
                },
              ),
              Container(
                child: Text(i.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}