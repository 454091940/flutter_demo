import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/RouterPage/RouterPage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('常用功能'),
      ),
      body: View(),
    );
  }
}


class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomScrollView(
      shrinkWrap: true,
      // 内容
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: new SliverList(
            delegate: new SliverChildListDelegate(
              <Widget>[
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     RaisedButton(
                       child: Text('高德定位'),
                       onPressed: (){
                            Navigator.pushNamed(context, "location");
                       },
                     ),
                     RaisedButton(
                       child: Text('路由带参跳转'),
                       onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                              builder: (context)=>NameRoutePage(title: "我是传过来的参数")
                          ));
                       },
                     ),
                     RaisedButton(
                       child: Text('极光推送'),
                       onPressed: (){
                            //个人认证没有通过
                       },
                     ),
                     RaisedButton(
                       child: Text('flutter轮播'),
                       onPressed: (){
                          Navigator.pushNamed(context, "Swiper");
                       },
                     ),
                     RaisedButton(
                       child: Text('Http请求'),
                       onPressed: (){
                          Navigator.pushNamed(context, "Http");
                       },
                     ),
                     RaisedButton(
                       child: Text('拍照'),
                       onPressed: (){
                            Navigator.pushNamed(context, 'Imagepicker');
                       },
                     ),
                     RaisedButton(
                       child: Text('监听网络变化'),
                       onPressed: (){
                          Navigator.pushNamed(context, 'connectivity');
                       },
                     ),
                     RaisedButton(
                       child: Text('封装本地存储(状态管理)'),
                       onPressed: (){
                            Navigator.pushNamed(context, 'LocaStroge');
                       },
                     ),
                     RaisedButton(
                       child: Text('打开外部应用/call/sms'),
                       onPressed: (){
                            Navigator.pushNamed(context, 'CallSmsUrl');
                       },
                     ),
                     RaisedButton(
                       child: Text('获取设备信息'),
                       onPressed: (){
                          Navigator.pushNamed(context, "device");
                       },
                     ),
                     RaisedButton(
                       child: Text('扫描二维码'),
                       onPressed: (){
                          Navigator.pushNamed(context, "ScanCode");
                       },
                     ),
                     RaisedButton(
                       child: Text('更多功能还在完善中...'),
                       onPressed: (){

                       },
                     )
                   ],
                 )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

