import 'package:flutter/material.dart';
import 'package:xo_game/splash_screen.dart';
import 'package:xo_game/xoGameView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        XoGame.routeName: (context) => XoGame(),
        SplashScreen.routeName: (context) => SplashScreen(),
      },
    );
  }
}
