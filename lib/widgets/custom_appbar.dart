
import 'package:flutter/material.dart';
import 'package:time/time.dart';

import '../theme/colors.dart';


class CustomAppbar extends StatefulWidget with PreferredSizeWidget{
  // CustomAppbar({Key? key,}) : super(key: key);

  @override
  _CustomAppbarState createState() => _CustomAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight+43);
}

class _CustomAppbarState extends State<CustomAppbar> {
  String _value = "";
  @override
  Widget build(BuildContext context) {
    double  heightR,widthR;
    heightR = MediaQuery.of(context).size.height / 1080; //v26
    widthR = MediaQuery.of(context).size.width / 2400;
    var curR = widthR;

    return Container(
      height: 80*heightR,
      padding: EdgeInsets.only(left: 50*widthR, right: 15*widthR,top: 10*heightR),
      decoration: BoxDecoration(
          color: shadowColor,
          boxShadow: [
            BoxShadow(
                color: shadowColor.withOpacity(0.1),
                blurRadius: .5,
                spreadRadius: .5,
                offset: Offset(0, 1)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // PopupMenuButton(
          //     icon: Icon(
          //       Icons.menu,
          //       color: secondary,
          //     ),
          //     color: secondary,
          //     elevation: 20,
          //     enabled: true,
          //     onSelected: (value) {
          //       setState(() {
          //         _value = value;
          //       });
          //     },
          //     itemBuilder: (context)=>[
          //       PopupMenuItem(
          //         child: Text("First"),
          //         value: "first",
          //       ),
          //       PopupMenuItem(
          //         child: Text("Second"),
          //         value: "Second",
          //       ),
          //     ]
          // ),
          IconButton(
              onPressed: () {
                // do something
              },
              icon: Icon(
                Icons.menu,
                color: secondary,
              ),
          ),
          Text(
              "${DateTime.now()}",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          PopupMenuButton(
              icon: Icon(
                  Icons.more_vert,
                color: secondary,
              ),
              // color: secondary,
              // elevation: 20,
              // enabled: true,
              onSelected: (value) {
                setState(() {
                  _value = value;
                });
              },
              itemBuilder: (context)=>[
                PopupMenuItem(
                  child: Text("First"),
                  value: "first",
                ),
                PopupMenuItem(
                  child: Text("Second"),
                  value: "Second",
                ),
              ]
          ),
        ],
      ),
    );

  }
}