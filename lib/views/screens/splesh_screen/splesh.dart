import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splesh_screen extends StatefulWidget {
  const splesh_screen({super.key});

  @override
  State<splesh_screen> createState() => _splesh_screenState();
}

class _splesh_screenState extends State<splesh_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      (false)
          ? Get.offNamedUntil(
              "/home",
              (route) => false,
            )
          : Get.offNamedUntil(
              '/intro',
              (route) => false,
            );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f5f6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Jokes It..",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
