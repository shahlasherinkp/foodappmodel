import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:foodappmodel/components/bottombar.dart';
import 'package:foodappmodel/pageone/loginscreen.dart';
import 'package:foodappmodel/pagethree/pizza.dart';
import 'package:foodappmodel/secondpage/delivery.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() {
  runApp(
    DevicePreview(
      enabled: false,
      tools: [
        ...DevicePreview.defaultTools,
        const MyApp(),
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         fontFamily: 'Roboto'
        
    
      ),
      home:ScreenLogin()
    );
  }
}

