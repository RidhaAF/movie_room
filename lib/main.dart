import 'package:flutter/material.dart';
import 'package:movie_room/pages/auth/sign_in_page.dart';
import 'package:movie_room/pages/home/home_page.dart';
import 'package:movie_room/pages/main_page.dart';
import 'package:movie_room/pages/profile/profile_page.dart';
import 'package:movie_room/pages/search/search_page.dart';
import 'package:movie_room/pages/splash_page.dart';
import 'package:movie_room/pages/watchlist/watchlist_page.dart';

void main() {
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
        '/search': (context) => const SearchPage(),
        '/watchlist': (context) => const WatchlistPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
