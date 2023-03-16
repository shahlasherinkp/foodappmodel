import 'package:flutter/material.dart';

class Bottomnavigtn extends StatelessWidget {
  const Bottomnavigtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Vector 1.png'),
                  fit: BoxFit.fill),
            ),
            child: Center(
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                items: [
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/Home.png'),
                  label: ''
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/discount (1) 1.png'),
                  label: ''
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/Buy.png'),
                  label: ''
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons.png'),
                  label: ''
                ),
              ]),
            ),
         
          );
  }
}