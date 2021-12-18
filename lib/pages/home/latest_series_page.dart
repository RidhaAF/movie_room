import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';

class LatestSeriesPage extends StatelessWidget {
  const LatestSeriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget moviesCard() {
      return Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      );
    }

    Widget moviesGrid() {
      return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 3 / 4,
        padding: EdgeInsets.all(defaultMargin),
        children: [
          for (int i = 0; i < 15; i++) moviesCard(),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: backgroundColor1,
        elevation: 0,
        title: Text(
          'Latest Series',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
      backgroundColor: backgroundColor1,
      body: moviesGrid(),
    );
  }
}
