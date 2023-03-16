import 'package:flutter/material.dart';

class Mainfood extends StatelessWidget {
  const Mainfood({
    super.key, required this.image, required this.foodname, required this.itemame, required this.price,
  });
  final String image;
  final String foodname;
  final String itemame;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(right: 16),
      height: 200,
      width: 164,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image, height: 140,),
            Text(
              foodname,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w900),
            ),
            Text(
              itemame,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w700,
                  color: Colors.grey
                  ),
            ),
            Text(price,style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500),)
          ]
        ),
      ),
    );
  }
}