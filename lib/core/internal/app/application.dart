import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../precentetion/screen/detail_screens/presentation/detail_screen.dart';
import '../../precentetion/screen/home_screen/presentation/home_screen.dart';
import '../../precentetion/screen/intro_screen/presentation/intro_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/intro',
        getPages: [
          GetPage(name: '/intro', page: () => const IntroScreen()),
          GetPage(name: '/home', page: () => const HomeScreen()),
          GetPage(name: '/detail', page: () => const DetailScreen()),
        ]);
  }
}
