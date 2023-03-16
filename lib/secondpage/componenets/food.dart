import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({
    super.key, required this.image, required this.text, required this.backgroundolor, required this.buttoncolor, this.onpress, 
  });
  final String image;
  final String text;
  final Color backgroundolor;
  final Color buttoncolor;
  final onpress;

  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 150,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
            color: backgroundolor
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image),
              Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),),
               Container(
            width: 30,
            height: 30,
            child: Icon(Icons.arrow_forward_ios_rounded, size: 15,),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: buttoncolor
          )
               ),
            ],
          ),
        ),
      ),
    );
  }
}