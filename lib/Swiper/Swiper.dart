import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_banner_swiper/flutter_banner_swiper.dart';

class Swiper extends StatefulWidget {
  @override
  _SwiperState createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  List<String> bannerlist = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._addlist();
  }
  _addlist(){
    bannerlist.add("http://pic1.win4000.com/mobile/2019-12-16/5df747d67847b_250_350.jpg");
    bannerlist.add('http://pic1.win4000.com/mobile/2019-11-28/5ddf7e05c4a4f_250_350.jpg');
    bannerlist.add('http://pic1.win4000.com/mobile/2019-12-05/5de87878804ef_250_350.jpg');
    bannerlist.add('http://pic1.win4000.com/mobile/2019-12-10/5def5634f1737_250_350.jpg');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              child:  BannerSwiper(
              //width  和 height 是图片的高宽比  不用传具体的高宽   必传
              height: 120,
              width: 70,
              //轮播图数目 必传
              length: bannerlist.length,
              //轮播的item  widget 必传
              getwidget: (index) {
                return new GestureDetector(
                  child:  Image.network(bannerlist[index % bannerlist.length],fit: BoxFit.cover,),
                  onTap: () {
                    //点击后todo
                  });
              },
            )
          )
        ],
      ),
    );
  }
}
