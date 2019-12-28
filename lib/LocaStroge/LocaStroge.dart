
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../DartClass/Stroge.dart';
import 'getStroge.dart';

class LocaStroge extends StatefulWidget {
  @override
  _LocaStrogeState createState() => _LocaStrogeState();
}

class _LocaStrogeState extends State<LocaStroge> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('保存值'),
      ) ,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: myController,
            decoration: new InputDecoration(
              labelText: '请输入要保存的值',
            ),
            autofocus: false,
          ),
          RaisedButton(
            child: Text('保存输入的数据'),
            onPressed:() async{
              await Stroges.setString('key', myController.text);
              print(myController.text);
             },
          ),
          RaisedButton(
            child: Text('点击跳转到另一个页面获取保存的值'),
            onPressed: () async {
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=> GetData()
                  ));
            },
          )
        ],
      ),
    );
  }
}
