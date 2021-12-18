import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_room/pages/home/home_page.dart';
import 'package:movie_room/pages/profile/profile_page.dart';
import 'package:movie_room/pages/search/search_page.dart';
import 'package:movie_room/pages/watchlist/watchlist_page.dart';
import 'package:movie_room/themes/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const SearchPage(),
    const WatchlistPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor2,
        selectedItemColor: primaryColor,
        unselectedItemColor: mutedColor,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 12,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 12,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_home.png',
              width: 24,
              height: 24,
              color: _selectedIndex == 0 ? primaryColor : mutedColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_search.png',
              width: 24,
              height: 24,
              color: _selectedIndex == 1 ? primaryColor : mutedColor,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_watchlist.png',
              width: 24,
              height: 24,
              color: _selectedIndex == 2 ? primaryColor : mutedColor,
            ),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_profile.png',
              width: 24,
              height: 24,
              color: _selectedIndex == 3 ? primaryColor : mutedColor,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
