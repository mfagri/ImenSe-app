import 'package:flutter/material.dart';
import 'package:imense_task/view/menu/main_page.dart';
import 'package:imense_task/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // i don't use provider in  this project because it's a small project
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/menu': (context) => const MainPage(),
        '/': (context) => const SplashPage(),
      },
      initialRoute: '/',
    );
  }
}
