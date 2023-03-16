import 'package:flutter/material.dart';
import 'package:foodappmodel/secondpage/delivery.dart';

import 'formdec.dart';

class loginbox extends StatelessWidget {
  const loginbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        
        children: [
          Row(
           
            children: [
              Image.asset(
                'assets/images/Frame 13 (1).png',
                width: 162,
                height: 50,
              ),
              Image.asset(
                'assets/images/Frame 14 (1).png',
                width: 162,
                height: 50,
              ),
            ],
          ),
          SizedBox(height: 15,),
          TextFormField(decoration: formdec('Emaial adress')),
          SizedBox(height: 15,),
          TextFormField(
            obscureText: true,
            decoration: formdec('Password'),
          ),
          SizedBox(height: 15,),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                  Navigator.pushReplacement(  
              context,  
              MaterialPageRoute(builder: (context) => ScreenDelivery()));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(36))),
                  backgroundColor: MaterialStateProperty.all(
                      Color(0xff8359E3))),
              child: Text('Create account'),
            ),
          ),
        ],
      ),
    );
  }
}
