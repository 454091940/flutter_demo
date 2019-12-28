
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Imagepicker> {
  var _imgPath;

  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imgPath = image;
    });
  }

  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
  }

  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Center(
        child: Text("请选择图片或拍照"),
      );
    }else {
      return Image.file(imgPath);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('调用原生api实现拍照功能'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('拍照'),
                onPressed: _takePhoto
            ),
            RaisedButton(
                child: Text('选择照片'),
                onPressed:_openGallery
            ),
            _ImageView(_imgPath)
          ],
        ),
      ),
    );
  }
}





