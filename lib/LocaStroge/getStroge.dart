import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../DartClass/Stroge.dart';
import 'package:shared_preferences/shared_preferences.dart';
class GetData extends StatefulWidget {
  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {

  String data="点击按钮获取值";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('获取数据'),
      ),
      body: Column(
        children: <Widget>[
          Text('${this.data}'),
          RaisedButton(
            child: Text('点击获取'),
            onPressed: () async {
              var a=await Stroges.getString('key');
              setState(() {
                this.data=a;
              });
            }
            )
        ],
      ),
    );
  }
}
