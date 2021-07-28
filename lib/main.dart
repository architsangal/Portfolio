import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';

void main() async {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  static const MaterialColor dark_blue = const MaterialColor(
    0xFF000000,
    const <int, Color>{
      50: const Color(0xFF000000),
      100: const Color(0xFF000000),
      200: const Color(0xFF000000),
      300: const Color(0xFF000000),
      400: const Color(0xFF000000),
      500: const Color(0xFF000000),
      600: const Color(0xFF000000),
      700: const Color(0xFF000000),
      800: const Color(0xFF000000),
      900: const Color(0xFF000000),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Archit Sangal | Portfolio ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: dark_blue,
        primarySwatch: dark_blue,
      ),
      home: MyHomePage(title: 'Portfolio'),
    );
  }
}
