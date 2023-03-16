import 'package:flutter/material.dart';
import 'package:foodappmodel/pagethree/componenets/button.dart';
import 'package:foodappmodel/secondpage/delivery.dart';

import 'componenets/size.dart';

class ScreenPizza extends StatefulWidget {
  const ScreenPizza({
    super.key,
  });

  @override
  State<ScreenPizza> createState() => _ScreenPizzaState();
}

class _ScreenPizzaState extends State<ScreenPizza> {
  int _count = 0;
  void _deccount() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  void _inccount() {
    setState(() {
      _count++;
    });
  }

  String? isSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Background (1).png'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                          Navigator.pop(  
              context,  
              MaterialPageRoute(builder: (context) => ScreenDelivery()));
                      },
                      child: Image.asset('assets/images/Group 7.png')),
                    Image.asset('assets/images/Group 8.png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'Margherita Pizza',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'Rs.1250',
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Size',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 150,
                          width: 30,
                          child: ListView.builder(
                            itemCount: sizelist.length,
                            itemBuilder: (context, i) {
                              return SelectSize(
                                text: sizelist[i],
                                color: isSelected == sizelist[i]
                                    ? Colors.amber
                                    : Colors.white,
                                onpress: () {
                                  isSelected = sizelist[i];
                                  setState(() {});
                                },
                              );
                            },
                          ),
                        ),
                        const Text(
                          'Quantity',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 32,
                                width: 32,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                 (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return Colors.amber;
                                          return Colors.white;
                                        }
                                                )),
                                    onPressed: _deccount,
                                    child: Text("-",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900))),
                              ),
                              Text('${_count}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w900)),
                              SizedBox(
                                height: 32,
                                width: 32,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return Colors.amber;
                                          return Colors.white;
                                        })),
                                    onPressed: _inccount,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/pizza picture (2).png',
                      height: 280,
                      width: 250,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/Review details.png'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Details',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'The cheese is melted and just about /ncompletely forms a liquid with the tomato \nsauce at the time of serving. The taste is of \nbread, cheese and a tomato sauce made with \nripes tomatoes. The main ingredients for the \nPizza are basil, mozzarella cheese and red /ntomatoes.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 40,
                ),
                elevattedbutton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
