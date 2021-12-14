import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Text(
        'Welcome to\nMovie Room🍿',
        style: GoogleFonts.inter(
          fontSize: 36,
          fontWeight: bold,
          color: whiteColor,
        ),
      );
    }

    Widget subtitle() {
      return Text(
        'We give you the best recommendation movie and series.',
        style: GoogleFonts.inter(
          fontSize: 12,
          color: secondaryColor,
        ),
      );
    }

    Widget illustration() {
      return Align(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/il_sign_in.png',
          width: 248,
        ),
      );
    }

    Widget signInButton() {
      return ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
        style: darkGrayButtonStyle,
        child: Container(
          height: 48,
          width: double.infinity,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ic_google.png',
                width: 36,
              ),
              const SizedBox(width: 8),
              Text(
                'Sign in with Google',
                style: GoogleFonts.inter(
                  color: whiteColor,
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(),
              subtitle(),
              const SizedBox(height: 170),
              illustration(),
              const SizedBox(height: 170),
              signInButton(),
            ],
          ),
        ),
      ),
    );
  }
}
