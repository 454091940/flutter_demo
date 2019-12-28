import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:amap_location/amap_location.dart';
import 'package:permission_handler/permission_handler.dart';
class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  double _longitude = 0;
  double _latitude = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.requestPermission();
  }

  //获取地理位置
  _getLocation() async {
    await AMapLocationClient.startup(new AMapLocationOption(desiredAccuracy:CLLocationAccuracy.kCLLocationAccuracyHundredMeters));
    var result = await AMapLocationClient.getLocation(true);
    print(result.longitude);
    print(result.latitude);
    setState(() {
      this._longitude = result.longitude;
      this._latitude = result.latitude;
    });
  }


  Future requestPermission() async {
    // 申请权限
    Map<PermissionGroup, PermissionStatus> permissions =
    await PermissionHandler().requestPermissions([PermissionGroup.location]);
    //校验权限
    if (permissions[PermissionGroup.location] != PermissionStatus.granted) {
      bool isOpened = await PermissionHandler().openAppSettings();
    } else {
      this._getLocation();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('高德定位'),
      ),
      body: Column(
        children: <Widget>[
          Text('_longitude${this._longitude}'),
          Text('_latitude${this._latitude}'),
        ],
      ),
    );
  }
}
