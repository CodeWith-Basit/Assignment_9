import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String belowText;
  final String imgurl;
  const Category({super.key, required this.belowText, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.only(left: 15),
          // padding: EdgeInsets.all(3),
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   gradient: LinearGradient(
          //     colors: [Colors.pink, Colors.orange, Colors.yellow],
          //   ),
          // ),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(imgurl),
              radius: 40,
            ),
          ),
        ),
        Text(belowText, style: TextStyle(fontSize: 15, color: Colors.black)),
      ],
    );
  }
}