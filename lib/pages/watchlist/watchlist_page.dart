import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget watchlistNotFound() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/il_watchlist.png',
              height: 120,
            ),
            const SizedBox(height: 16),
            Text(
              "You don't have a watchlist",
              style: GoogleFonts.inter(
                color: whiteColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
    }

    Widget watchlistCard() {
      return Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      );
    }

    Widget watchlistGrid() {
      return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 3 / 4,
        padding: EdgeInsets.all(defaultMargin),
        children: [
          for (int i = 0; i < 8; i++) watchlistCard(),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Watchlist',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
      backgroundColor: backgroundColor1,
      body: watchlistGrid(),
    );
  }
}
