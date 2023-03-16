import 'package:flutter/material.dart';
import 'package:foodappmodel/secondpage/delivery.dart';

final List<String> movielist = [
    'Sipder-man',
    'Badhaai Do',
    'Pushpa',
  ];

final List<String> Timelist = [
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
    '5:00 PM',
    '6:00 PM',
  ];

Future<dynamic> alertbox(BuildContext context) {
    return showDialog(
      
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)) ,
                            
                            
                            title: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.lightBlue),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                fillColor: Color(0xffF0EFFD),
                                filled: true,
                                prefixIcon: Image.asset(
                                    'assets/images/Location (1).png'),
                                suffixIcon:
                                    Image.asset('assets/images/Search.png'),
                              ),
                            ),
                            content: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Movies',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                               
                                    Wrap(children: [
                                      for (var i in movielist)
                                        Chip(
                                          backgroundColor: Color(0xffFECE00),
                                          label: Text(i),
                                        ),
                                    ]),
                                    Row(
                                      children: [
                                        Text('Timing', style: TextStyle(
                                              fontSize: 12, color: Colors.grey),),
                                      ],
                                    ),
                                       Wrap(children: [
                                      for (var i in Timelist)
                                        Chip(
                                          backgroundColor: Color(0xffFECE00),
                                          label: Text(i),
                                        ),
                                    ]),    

                                  ],
                                
                              
                            ),
                            actions: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  iconColor: MaterialStateProperty.all(Colors.amber)
                                ),
                                  onPressed: () {}, child: Text('done'))
                            ],
                          );
                        });
  }

