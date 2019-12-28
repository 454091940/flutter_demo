import 'package:flutter/cupertino.dart';
import 'package:flutter_apps/CallSmsUrl/CallSmsUrl.dart';
import 'package:flutter_apps/Http/Http.dart';
import 'package:flutter_apps/Image_picker/Image_picker.dart';
import 'package:flutter_apps/LocaStroge/LocaStroge.dart';
import 'package:flutter_apps/RouterPage/RouterPage.dart';
import 'package:flutter_apps/Scancode/Scancode.dart';
import 'package:flutter_apps/Swiper/Swiper.dart';
import 'package:flutter_apps/connectivity/connectivity.dart';
import 'package:flutter_apps/device/getdevice.dart';
import 'package:flutter_apps/location/location.dart';

final route={
   //定位页面内包含获取权限
   "location":(BuildContext context)=> Location(),
   //命名路由带参跳转
   "NameRoutePage":(BuildContext context )=>NameRoutePage(),
   //调用原生api实现拍照
   "Imagepicker":(BuildContext context )=>Imagepicker(),
   //监听网络变化
   "connectivity":(BuildContext context )=>connectivity(),
   //扫码二维码
   'ScanCode':(BuildContext context )=>ScanCode(),
   //轮播
   "Swiper":(BuildContext context )=>Swiper(),
   //Http请求
   "Http":(BuildContext context )=>HttpRes(),
   //获取设备信息
   "device":(BuildContext context )=>device(),
   //发短信打电话打开第三方应用
   'CallSmsUrl':(BuildContext context )=>CallSmsUrl(),
   //封装本地存储
   'LocaStroge':(BuildContext context )=>LocaStroge(),
};