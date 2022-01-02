import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/themes/theme.dart';
import 'package:readmore/readmore.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  bool isWatchlist = false;
  var top = 0.0;

  @override
  Widget build(BuildContext context) {
    Widget movieBackground() {
      return Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter:
                ColorFilter.mode(blackColor.withOpacity(0.5), BlendMode.darken),
            image: const NetworkImage(
                'https://cinemags.co.id/wp-content/uploads/2021/08/Poster-Dune-735x400.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget moviePoster() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        height: 162,
        width: 114,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          image: const DecorationImage(
            image: NetworkImage(
                'https://m.media-amazon.com/images/I/61ux6FzCdGL._AC_SL1280_.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget movieInfo() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dune',
            style: GoogleFonts.inter(
              color: whiteColor,
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '2021 • PG-13 • 2h 35m',
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
                'Science Fiction, Adventure',
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
                'Denis Villeneuve',
                style: GoogleFonts.inter(
                  color: whiteColor,
                  fontSize: 12,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget movieOverview() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
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
              "Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity's greatest potential-only those who can conquer their fear will survive.",
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
        ),
      );
    }

    Widget movieRating() {
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
              '8.2',
              style: GoogleFonts.inter(
                color: whiteColor,
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            Text(
              '/10 • 374K',
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
                    'https://www.themoviedb.org/t/p/w138_and_h175_face/phSALdB5EwWbDp2bsrYe5i6PlYP.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Timothée Chalamet',
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
            'Paul Atreides',
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

    Widget movieCast() {
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

    Widget movieRecommendation() {
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            backgroundColor: backgroundColor1,
            centerTitle: true,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: defaultMargin),
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: backgroundColor1.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.chevron_left,
                    color: whiteColor,
                    size: 32,
                    semanticLabel: 'Back',
                  ),
                ),
              ),
            ),
            leadingWidth: 48,
            actions: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isWatchlist = !isWatchlist;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(right: defaultMargin),
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: backgroundColor1.withOpacity(0.7),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      isWatchlist == false
                          ? Icons.bookmark_outline
                          : Icons.bookmark_outlined,
                      color: whiteColor,
                      semanticLabel: 'Add to Watchlist',
                    ),
                  ),
                ),
              ),
            ],
            flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              top = constraints.biggest.height;
              return FlexibleSpaceBar(
                centerTitle: true,
                title: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: top == 80.0 ? 1.0 : 0.0,
                  child: Text(
                    'Dune',
                    style: GoogleFonts.inter(
                      color: whiteColor,
                      fontWeight: bold,
                    ),
                  ),
                ),
                collapseMode: CollapseMode.parallax,
                background: movieBackground(),
              );
            }),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 16),
                Row(
                  children: [
                    moviePoster(),
                    movieInfo(),
                  ],
                ),
                const SizedBox(height: 16),
                movieOverview(),
                const SizedBox(height: 16),
                movieRating(),
                const SizedBox(height: 16),
                movieCast(),
                movieRecommendation(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
