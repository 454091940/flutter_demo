import 'package:flutter/cupertino.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
class connectivity extends StatefulWidget {

  @override
  _connectivityState createState() => _connectivityState();
}

class _connectivityState extends State<connectivity> {
  String _state="没有网络";
  var _subscription;
  @override initState() {
    super.initState();
    this._createNet();
  }



  _createNet(){
    _subscription=Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile) {
        setState(() { _state="手机网络"; });
      } else if (result == ConnectivityResult.wifi) {
        setState(() { _state="Wifi 网络"; });
      }else{
        setState(() { _state="没有网络"; });
      }
    });
  }
  @override dispose() {
    super.dispose();
    _subscription.cancel();
    this._createNet();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: Text("检测网络变化"),
        ),
        body:Text("${this._state}"));
  }
}




