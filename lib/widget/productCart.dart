import 'package:flutter/material.dart';

class Cardcategory extends StatelessWidget {
  final String imgurl;
  final String title;
  final String description;
  final String finalPrice;
  final String? price;
  final String? discount;
  final String rating;
  const Cardcategory({
    super.key,
    required this.imgurl,
    required this.title,
    required this.description,
    required this.finalPrice,
    this.price,
    this.discount,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imgurl,
              width: double.infinity,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  finalPrice,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    if (price != null) ...[
                      Text(
                        price!,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                    if (discount != null) ...[
                      Text(
                        discount!,
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                    ],
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star_half, color: Colors.grey),
                    SizedBox(width: 3),
                    Text(
                      rating,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(height: 7),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
