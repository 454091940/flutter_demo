import 'package:flutter/cupertino.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
class device extends StatefulWidget {
  @override
  _deviceState createState() => _deviceState();
}

class _deviceState extends State<device> {
  String meassage1="点击按钮获取设备信息";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('获取设备信息'),
      ),
      body: Column(
        children: <Widget>[
          Text('设备信息:${this.meassage1}'),
          RaisedButton(
            child: Text('获取'),
            onPressed: () async {
              print("触发了事件");
              DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
              AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
              if(androidInfo.model!=null){
                setState(() {
                  this.meassage1=androidInfo.model;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
