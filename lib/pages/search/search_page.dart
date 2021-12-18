import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Search',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
      backgroundColor: backgroundColor1,
      body: Container(
        margin: EdgeInsets.all(defaultMargin),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: TextField(
          // autofocus: true,
          controller: _searchController,
          cursorColor: primaryColor,
          enableSuggestions: true,
          keyboardAppearance: Brightness.dark,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search movies, series, cast..',
            hintStyle: GoogleFonts.inter(
              color: secondaryColor,
              fontSize: 14,
            ),
            icon: Image.asset(
              'assets/images/ic_search.png',
              height: 24,
              width: 24,
              color: secondaryColor,
            ),
          ),
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: blackColor,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
