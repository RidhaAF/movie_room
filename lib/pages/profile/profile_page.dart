import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_room/themes/theme.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'profile',
    'email',
  ],
);

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? user = FirebaseAuth.instance.currentUser;
  bool _value = true;

  Future<void> _handleSignOut() async {
    try {
      await _googleSignIn.disconnect();
      Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
      if (kDebugMode) {
        print('Signed out');
      }
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          color: darkGrayColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                user!.photoURL!,
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(width: defaultMargin),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user!.displayName!,
                  style: GoogleFonts.inter(
                    color: whiteColor,
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  user!.email!,
                  style: GoogleFonts.inter(
                    color: secondaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget darkMode() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        decoration: BoxDecoration(
          color: darkGrayColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/ic_moon.png',
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'Dark Mode',
                style: GoogleFonts.inter(
                  color: whiteColor,
                  fontSize: 14,
                ),
              ),
            ),
            Switch.adaptive(
              activeColor: primaryColor,
              value: _value,
              onChanged: (newValue) => setState(
                () => _value = newValue,
              ),
            ),
          ],
        ),
      );
    }

    Widget signOutButton() {
      return ElevatedButton(
        onPressed: () {
          _handleSignOut();
        },
        style: primaryButtonStyle,
        child: Container(
          height: 48,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            'Sign Out',
            style: GoogleFonts.inter(
              color: whiteColor,
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget appVersion() {
      return Text(
        'Version 1.0.0',
        style: GoogleFonts.inter(
          color: mutedColor,
          fontSize: 12,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Profile',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
      backgroundColor: backgroundColor1,
      body: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(height: defaultMargin),
            darkMode(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            signOutButton(),
            const SizedBox(height: 8),
            appVersion(),
          ],
        ),
      ),
    );
  }
}
