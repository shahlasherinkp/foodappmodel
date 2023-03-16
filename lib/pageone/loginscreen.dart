import 'package:flutter/material.dart';
import 'package:foodappmodel/pageone/components/formdec.dart';

import 'components/loginbox.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Snacks at your \nseat!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Image.asset('assets/images/Group 4.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 340,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: Colors.white,
                    ),
                    child: Column(
                    
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 175,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(36),
                                  )),
                              child: const Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 175,
                              decoration: const BoxDecoration(
                                  color: Color(0xffEEE5FF),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(36),
                                  )),
                              child: const Center(
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        loginbox(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

