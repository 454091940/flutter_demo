import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HttpRes extends StatefulWidget {
  @override
  _HttpResState createState() => _HttpResState();
}

class _HttpResState extends State<HttpRes> {
  String message="请输入ip地址后发起请求";
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
      appBar: AppBar(
        title: Text('Http请求示例'),
      ),
      body: Column(
        children: <Widget>[
          Text('请求回来的数据:${this.message}'),
          TextField(
          controller: myController,
          decoration: new InputDecoration(
            labelText: '请输入一个ip地址',
          ),
          autofocus: false,
        ),
          RaisedButton(
            child: Text('点击发起请求'),
            onPressed: () async {
              var url = 'http://ip.taobao.com/service/getIpInfo.php';
              var res = await http.post(url,body: {"ip":myController.text});
              print('Response status:${res.body}');
              if(res.statusCode==200){
                setState(() {
                  this.message=res.body;
                });
              }else if(res.statusCode==0){
                setState(() {
                  this.message="请检查ip地址是否输入正确,或者当前网络有问题";
                });
              }
            }
          )
        ],
      ),
    );
  }
}


