import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var height=25.0;
    path.lineTo(0, 0); //第1个点
    path.lineTo(0, size.height); //第2个点
    var firstControlPoint = Offset(size.width/2, size.height);
    var firstEdnPoint = Offset(size.width, size.height-height);
//    path.quadraticBezierTo(
//        firstControlPoint.dx,
//        firstControlPoint.dy,
//        firstEdnPoint.dx,
//        firstEdnPoint.dy
//    );
//    path.lineTo(size.width, size.height-50.0); //第3个点
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, height); //第4个点
    path.lineTo(size.width/5 * 3, height);
//    path.lineTo(size.width/2, 0);
    var controPoint=Offset(size.width/2, 0);
    var endPoint=Offset(size.width/5 * 2, height);
    path.quadraticBezierTo(controPoint.dx, controPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width/5 * 2, height);
    path.lineTo(0, height);
    return path;

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
