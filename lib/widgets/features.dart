import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget FeaturesCard(List list) {
  return Container(
    width: 500,
    height: 300,
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        Positioned(
          right: 0,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff5d9cf4),
                    Color(0xff94d1ff),
                  ],
                  stops: [0, 1],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.circular(30)),
            width: 330,
            height: 270,
            padding: EdgeInsets.only(left: 45, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  list[0],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  child: Wrap(
                    children: [
                      Text(
                        list[1],
                        style: TextStyle(fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            left: 20,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(9, 255, 255, 255),
              radius: 110,
              child: Image.asset(list[2]),
            )),
      ],
    ),
  );
}
