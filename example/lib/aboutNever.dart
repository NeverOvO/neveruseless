import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neveruseless/neveruseless.dart';

import 'main.dart';
class AboutNeverView extends StatefulWidget {
  final arguments;
  const AboutNeverView({Key? key, this.arguments}) : super(key: key);

  @override
  _AboutNeverViewState createState() => _AboutNeverViewState();
}

class _AboutNeverViewState extends State<AboutNeverView> {

  int i = 0;

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
          title: Text("关于我"),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Text("Github = "  + 'https://github.com/NeverOvO',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              ),
              Container(
                child: Text("博客 = "  + 'https://neverovo.github.io',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              ),
              Container(
                child: Text("Telegram = "  + 'https://t.me/NeverOuO',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              ),
              Container(
                child: Text("Email = "  + '1019832705@qq.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}