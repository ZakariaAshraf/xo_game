import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:xo_game/xoGameView.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  static String routeName = "splashScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFF6D4EE8), Color(0xFFA8300D)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME",
              style: TextStyle(
                  color: Color(0xffdcb786),
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 270,),
            AvatarGlow(
              glowShape: BoxShape.circle,
              duration: const Duration(seconds: 1),
              glowColor: Colors.white,
              repeat: true,
              startDelay: const Duration(seconds: 1),
              animate: true,
              child:  GestureDetector(
                onTap: () => Navigator.pushNamedAndRemoveUntil(context, XoGame.routeName, (route) => false),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 70,
                    width: 160,
                    color: const Color(0xff2d1a02),
                    child: const Center(
                      child: Text(
                        "PLAY GAME",
                        style: TextStyle(
                          color: Color(0xffdcb786),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
