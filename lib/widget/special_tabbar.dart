import 'package:flutter/material.dart';

class SpecailTabBar extends StatefulWidget {
  @override
  _SpecailTabBarState createState() => _SpecailTabBarState();
}

class _SpecailTabBarState extends State<SpecailTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
           width: 50,
           height: 50,
           child: Icon(Icons.home),
         ),
          Material(
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.green,
                width: 0,
              )
            ),
            child: IconButton(icon: Icon(Icons.add), onPressed: null,iconSize: 40,),
          ),
          Container(
            width: 50,
            height: 50,
            child: Icon(Icons.home),
          )
        ],
      ),
    );
  }
}
