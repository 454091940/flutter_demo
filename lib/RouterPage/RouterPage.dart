import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//此组件内包含带参跳转

class NameRoutePage extends StatelessWidget {
  String title;
  NameRoutePage(
    {this.title}
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('带参路由跳转'),
        ),
        body:Container(
          child: Text(this.title),
        )
    );
  }
}


 