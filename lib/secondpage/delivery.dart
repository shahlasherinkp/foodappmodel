import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodappmodel/pagethree/pizza.dart';
import 'package:foodappmodel/secondpage/componenets/alert.dart';

import '../components/bottombar.dart';
import 'componenets/food.dart';
import 'componenets/mainfood.dart';

class ScreenDelivery extends StatefulWidget {
  ScreenDelivery({super.key});

  @override
  State<ScreenDelivery> createState() => _ScreenDeliveryState();
}

class _ScreenDeliveryState extends State<ScreenDelivery> {
  String? isSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Background (1).png'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                              Navigator.push(  
              context,  
              MaterialPageRoute(builder: (context) => ScreenPizza()));
                          },
                          child: Image.asset('assets/images/options icon (2).png')),
                        GestureDetector(
                          onTap: () {
                            alertbox(context);
                          },
                          child: Row(
                            children: [
                              Image.asset('assets/images/location.png'),
                              const Text(
                                'PVR, Jabalpur',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Image.asset('assets/images/down.png')
                            ],
                          ),
                        ),
                        Image.asset('assets/images/Group 5.png'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Get your food',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9E9E9E)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Delivered!',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Catagories',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: foodlist.length,
                          itemBuilder: (context, i) {
                            return Food(
                              image: foodlist[i]['image'],
                              text: foodlist[i]['text'],
                              backgroundolor: isSelected == foodlist[i]['text']
                                  ? Colors.amber
                                  : Colors.white,
                              buttoncolor: isSelected == foodlist[i]['text']
                                  ? Colors.white
                                  : Colors.amber,
                              onpress: () {
                                isSelected = foodlist[i]['text'];
                                setState(() {});
                              },
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Popular Now',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 230,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: fooditem.length,
                          itemBuilder: (context, i) {
                            return Mainfood(
                                image: fooditem[i]['image'],
                                foodname: fooditem[i]['foodname'],
                                itemame: fooditem[i]['itemame'],
                                price: fooditem[i]['price']);
                          }),
                    ),
                  ],
                ),
              ),
            ),
            
            
          ],
        ),
      
      ),
      bottomNavigationBar: Bottomnavigtn(),
    );
  }
}



final List foodlist = [
  {
    'image': 'assets/images/012-pizza.png',
    'text': 'Pizza',
  },
  {
    'image': 'assets/images/045-burger.png',
    'text': 'Burger',
  },
  {
    'image': 'assets/images/popcorn 1.png',
    'text': 'Popcorn',
  }
];
final List fooditem = [
  {
    'image': 'assets/images/pizza picture.png',
    'foodname': 'Margherita Pizza',
    'itemame': 'Cheesy pizza',
    'price': 'Rs.1250'
  },
  {
    'image': 'assets/images/pizza picture.png',
    'foodname': 'Hamburger',
    'itemame': 'Double patty',
    'price': 'Rs.350'
  }
];
