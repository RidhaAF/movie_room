import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget illustration() {
      return Image.asset(
        'assets/images/il_splash.png',
        width: 128,
      );
    }

    Widget title() {
      return Text(
        'Movie Room',
        style: GoogleFonts.inter(
          color: whiteColor,
          fontSize: 36,
          fontWeight: bold,
        ),
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            illustration(),
            const SizedBox(height: 32),
            title(),
          ],
        ),
      ),
    );
  }
}
