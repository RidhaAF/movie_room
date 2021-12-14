import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'https://cinemags.co.id/wp-content/uploads/2021/08/Poster-Dune-735x400.jpg',
    'https://gizmostory.com/wp-content/uploads/2021/11/Tick-Tick%E2%80%A6-Boom-TV-Insider.jpg',
    'https://cdn.okeguys.com/wp-content/uploads/2021/08/20105804/Eternals_Teaser_1_Sheet_v10_Lg.0.jpg',
    'https://wallpapercave.com/wp/wp9128560.jpg',
    'https://blutube-ent.com/img/Shang-Chi-And-The-Legend-Of-The-Ten-Rings.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    Widget hero() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                viewportFraction: 0.93,
                autoPlayInterval: const Duration(seconds: 5),
                onPageChanged: (index, carouselReason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              carouselController: _controller,
              items: imgList
                  .map(
                    (item) => Container(
                      margin: EdgeInsets.fromLTRB(4, defaultMargin, 4, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(defaultRadius),
                        ),
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          height: 200,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key ? primaryColor : mutedColor,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      );
    }

    Widget latestMovies() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(defaultMargin, 0, 8, 0),
                  child: Text(
                    'Latest Movies',
                    style: GoogleFonts.inter(
                      color: whiteColor,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/ic_see_all.png',
                  width: 16,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              height: 162,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(defaultMargin, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4, 0, defaultMargin, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget latestSeries() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(defaultMargin, 0, 8, 0),
                  child: Text(
                    'Latest Series',
                    style: GoogleFonts.inter(
                      color: whiteColor,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/ic_see_all.png',
                  width: 16,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              height: 162,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(defaultMargin, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4, 0, defaultMargin, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget popular() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(defaultMargin, 0, 8, 0),
                  child: Text(
                    'Popular',
                    style: GoogleFonts.inter(
                      color: whiteColor,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/ic_see_all.png',
                  width: 16,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              height: 162,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(defaultMargin, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4, 0, defaultMargin, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget upcoming() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(defaultMargin, 0, 8, 0),
                  child: Text(
                    'Upcoming',
                    style: GoogleFonts.inter(
                      color: whiteColor,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/ic_see_all.png',
                  width: 16,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              height: 162,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(defaultMargin, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4, 0, defaultMargin, 0),
                    width: 114,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Movie Room🍿',
          style: GoogleFonts.inter(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
      ),
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            hero(),
            latestMovies(),
            latestSeries(),
            popular(),
            upcoming(),
          ],
        ),
      ),
    );
  }
}
