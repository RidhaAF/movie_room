import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_room/pages/auth/sign_in_page.dart';
import 'package:movie_room/pages/home/home_page.dart';
import 'package:movie_room/pages/home/latest_movies_page.dart';
import 'package:movie_room/pages/home/latest_series_page.dart';
import 'package:movie_room/pages/home/movie_detail_page.dart';
import 'package:movie_room/pages/home/popular_page.dart';
import 'package:movie_room/pages/home/series_detail_page.dart';
import 'package:movie_room/pages/home/upcoming_page.dart';
import 'package:movie_room/pages/main_page.dart';
import 'package:movie_room/pages/profile/profile_page.dart';
import 'package:movie_room/pages/search/search_page.dart';
import 'package:movie_room/pages/splash_page.dart';
import 'package:movie_room/pages/watchlist/watchlist_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/main': (context) => const MainPage(),
        '/home': (context) => const HomePage(),
        '/latest-movies': (context) => const LatestMoviesPage(),
        '/latest-series': (context) => const LatestSeriesPage(),
        '/popular': (context) => const PopularPage(),
        '/upcoming': (context) => const UpcomingPage(),
        '/movie/detail': (context) => const MovieDetailPage(),
        '/series/detail': (context) => const SeriesDetailPage(),
        '/search': (context) => const SearchPage(),
        '/watchlist': (context) => const WatchlistPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
