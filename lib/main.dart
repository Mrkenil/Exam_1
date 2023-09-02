import 'package:exam_1/views/screens/home_screen/home_page.dart';
import 'package:exam_1/views/screens/intro_screen/intro_screen.dart';
import 'package:exam_1/views/screens/save_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/screens/splesh_screen/splesh.dart';

void main() {
  runApp(
    app(),
  );
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Color(0xfff7ce76)),
      getPages: [
        GetPage(
          name: '/',
          page: () => splesh_screen(),
        ),
        GetPage(
          name: '/intro',
          page: () => intro_screen(),
        ),
        GetPage(
          name: '/home',
          page: () => Home(),
        ),
        GetPage(
          name: '/save',
          page: () => save_screen(),
        )
      ],
    );
  }
}
