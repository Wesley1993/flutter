import 'package:flutter/material.dart';

class CustomBtn extends StatefulWidget {
  Widget item;
  String value;

  CustomBtn({
    Key key,
    this.item,
    this.value,
  }) : super(key: key);

  @override
  _CustomBtnState createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget.item));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,//background
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            widget.value,
            style: TextStyle(color: Colors.white),// text color
          ),
        ));
  }
}
