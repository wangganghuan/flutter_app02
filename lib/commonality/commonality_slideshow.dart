//轮播图

import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const List<String> defautImages = [
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg'
];
var imageWidth = 750.0;
var imageHeight = 420.0;

class CommonSwiper extends StatelessWidget {
  final List<String> images;
  const CommonSwiper({Key key, this.images = defautImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //MediaQuery.of(context).size.width  屏幕宽度
    //自适应 高度
    var height = MediaQuery.of(context).size.width / imageWidth * imageHeight;
    return Container(
        height: height,
        child: new Swiper(
          autoplay: true,
          itemBuilder: (BuildContext context, int index) {
            return new CommonImage(
              this.images[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: this.images.length,
          pagination: new SwiperPagination(),
          // control: new SwiperControl(),
        ));
  }
}
