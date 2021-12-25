import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';
import 'package:readmore/readmore.dart';

class SeriesDetailPage extends StatefulWidget {
  const SeriesDetailPage({Key? key}) : super(key: key);

  @override
  State<SeriesDetailPage> createState() => _SeriesDetailPageState();
}

class _SeriesDetailPageState extends State<SeriesDetailPage>
    with SingleTickerProviderStateMixin {
  bool isWatchlist = false;
  int selectedIndex = 0;

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: selectedIndex,
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget seriesHeader() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.chevron_left,
                color: whiteColor,
                size: 24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isWatchlist = !isWatchlist;
              });
            },
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(
                isWatchlist == false
                    ? Icons.bookmark_outline
                    : Icons.bookmark_outlined,
                color: whiteColor,
                size: 24,
              ),
            ),
          ),
        ],
      );
    }

    Widget seriesBackground() {
      return Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter:
                ColorFilter.mode(blackColor.withOpacity(0.5), BlendMode.darken),
            image: const NetworkImage(
                'https://cdn.flickeringmyth.com/wp-content/uploads/2021/11/Hawkeye-1-600x739-1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget seriesPoster() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        height: 162,
        width: 114,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pqzjCxPVc9TkVgGRWeAoMmyqkZV.jpg'),
              fit: BoxFit.cover),
        ),
      );
    }

    Widget seriesInfo() {
      return Container(
        padding: const EdgeInsets.fromLTRB(138, 8, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hawkeye',
              style: GoogleFonts.inter(
                color: whiteColor,
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '2021 • TV-14 • 1 Season',
              style: GoogleFonts.inter(
                color: whiteColor,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Genre ',
                  style: GoogleFonts.inter(
                    color: whiteColor,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Action & Adventure, Drama',
                  style: GoogleFonts.inter(
                    color: whiteColor,
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Director ',
                  style: GoogleFonts.inter(
                    color: whiteColor,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Jonathan Igla',
                  style: GoogleFonts.inter(
                    color: whiteColor,
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget seriesOverview() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style: GoogleFonts.inter(
              color: whiteColor,
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 8),
          ReadMoreText(
            "Former Avenger Clint Barton has a seemingly simple mission: get back to his family for Christmas. Possible? Maybe with the help of Kate Bishop, a 22-year-old archer with dreams of becoming a superhero. The two are forced to work together when a presence from Barton’s past threatens to derail far more than the festive spirit.",
            style: GoogleFonts.inter(
              color: whiteColor,
              fontSize: 12,
            ),
            textAlign: TextAlign.justify,
            trimLines: 5,
            colorClickableText: whiteColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: '... read more',
            trimExpandedText: ' show less',
            delimiter: '',
            lessStyle: GoogleFonts.inter(
              fontWeight: semiBold,
            ),
            moreStyle: GoogleFonts.inter(
              fontWeight: semiBold,
            ),
          ),
        ],
      );
    }

    Widget seasonCard() {
      return Container(
        margin: const EdgeInsets.only(top: 8),
        height: 128,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 0, 4, 0),
              padding: const EdgeInsets.all(8),
              width: 228,
              decoration: BoxDecoration(
                color: darkGrayColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'S1 E1 • Nov 24 2021',
                    style: GoogleFonts.inter(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Never Meet Your Heroes',
                    style: GoogleFonts.inter(
                      color: secondaryColor,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Archer Kate Bishop lands in the middle of a criminal conspiracy, forcing Hawkeye out of retirement.',
                    style: GoogleFonts.inter(
                      color: mutedColor,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/ic_star.png',
                        width: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '8.2',
                        style: GoogleFonts.inter(
                          color: whiteColor,
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        '/10',
                        style: GoogleFonts.inter(
                          color: mutedColor,
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '47min',
                        style: GoogleFonts.inter(
                          color: secondaryColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(4, 0, defaultMargin, 0),
              padding: const EdgeInsets.all(8),
              width: 228,
              decoration: BoxDecoration(
                color: darkGrayColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'S1 E2 • Nov 24 2021',
                    style: GoogleFonts.inter(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Hide and Seek',
                    style: GoogleFonts.inter(
                      color: secondaryColor,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Clint has to help Kate disentangle herself from the Tracksuit mafia and a real-life murder mystery.',
                    style: GoogleFonts.inter(
                      color: mutedColor,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/ic_star.png',
                        width: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '7.5',
                        style: GoogleFonts.inter(
                          color: whiteColor,
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        '/10',
                        style: GoogleFonts.inter(
                          color: mutedColor,
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '47min',
                        style: GoogleFonts.inter(
                          color: secondaryColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget seriesSeason() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: primaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              labelColor: whiteColor,
              labelStyle: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: semiBold,
              ),
              unselectedLabelColor: mutedColor,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                  _tabController.animateTo(index);
                });
              },
              tabs: const [
                Tab(
                  child: Text(
                    'Season 1',
                  ),
                ),
                Tab(
                  child: Text(
                    'Season 2',
                  ),
                ),
              ],
            ),
          ),
          IndexedStack(
            children: <Widget>[
              Visibility(
                child: seasonCard(),
                maintainState: true,
                visible: selectedIndex == 0,
              ),
              Visibility(
                child: seasonCard(),
                maintainState: true,
                visible: selectedIndex == 1,
              ),
            ],
            index: selectedIndex,
          ),
          Container(
            margin: EdgeInsets.only(left: defaultMargin, top: 8),
            child: Text(
              '6 Episodes',
              style: GoogleFonts.inter(
                color: secondaryColor,
                fontSize: 12,
              ),
            ),
          ),
        ],
      );
    }

    Widget seriesRating() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/ic_star.png',
              width: 24,
            ),
            const SizedBox(width: 8),
            Text(
              '8.1',
              style: GoogleFonts.inter(
                color: whiteColor,
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            Text(
              '/10 • 24K',
              style: GoogleFonts.inter(
                color: mutedColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    Widget castList() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: secondaryColor,
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w138_and_h175_face/dxSDWkiVaC6JYjrV3XRAZI7HOSS.jpg'),
              ),
            ),
          ),
          Text(
            'Hailee Steinfeld',
            style: GoogleFonts.inter(
              color: whiteColor,
              fontSize: 12,
              fontWeight: bold,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            'Kate Bishop',
            style: GoogleFonts.inter(
              color: whiteColor,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );
    }

    Widget seriesCast() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text(
              'Cast',
              style: GoogleFonts.inter(
                color: whiteColor,
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            height: 148,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: defaultMargin, right: 4),
                  width: 80,
                  child: castList(),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 80,
                  child: castList(),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 80,
                  child: castList(),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 80,
                  child: castList(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 4, right: defaultMargin),
                  width: 80,
                  child: castList(),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget seriesRecommendation() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(defaultMargin, 8, defaultMargin, 0),
              child: Text(
                'Recommendation',
                style: GoogleFonts.inter(
                  color: whiteColor,
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
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
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                seriesBackground(),
                seriesInfo(),
              ],
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        seriesHeader(),
                        const SizedBox(height: 140),
                        seriesPoster(),
                        seriesOverview(),
                      ],
                    ),
                  ),
                  seriesSeason(),
                  const SizedBox(height: 16),
                  seriesRating(),
                  const SizedBox(height: 16),
                  seriesCast(),
                  seriesRecommendation(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
