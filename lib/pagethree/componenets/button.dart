import 'package:flutter/material.dart';

class elevattedbutton extends StatelessWidget {
  const elevattedbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
     width: 300,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(15))),
        backgroundColor: MaterialStateProperty.all(
            Colors.amber)),
          child: const Text(
            'Add to cart',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}

final List sizelist = ['S', 'M', 'L'];
