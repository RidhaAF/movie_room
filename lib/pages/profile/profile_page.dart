import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _value = true;

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
                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png',
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(width: defaultMargin),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ridha Ahmad Firdaus',
                  style: GoogleFonts.inter(
                    color: whiteColor,
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'ridhaaf@gmail.com',
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
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
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
