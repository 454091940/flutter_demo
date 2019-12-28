import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class CallSmsUrl extends StatefulWidget {
  @override
  _CallSmsUrlState createState() => _CallSmsUrlState();
}

class _CallSmsUrlState extends State<CallSmsUrl> {
  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _call() async {
    const tel = 'tel:1555010999';
    if (await canLaunch(tel)) {
      await launch(tel);
    } else {
      throw 'Could not launch $tel';
    }
  }

  _sms() async {
    const sms = 'sms:1555010999';
    if (await canLaunch(sms)) {
      await launch(sms);
    } else {
      throw 'Could not launch $sms';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('访问外部应用'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            child: Text('点击访问'),
            onPressed:_launchURL,
          ),
          RaisedButton(
            child: Text('发短信'),
            onPressed:_sms,
          ),
          RaisedButton(
            child: Text('打电话'),
            onPressed:_call,
          )
        ],
      ),
    );
  }
}
