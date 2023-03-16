import 'package:flutter/material.dart';

class SelectSize extends StatelessWidget {
  const SelectSize({
    super.key,
    required this.text, required this.color, this.onpress,
  });
  final String text;
  final Color color;
  final onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 32,
        width: 32,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
