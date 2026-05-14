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