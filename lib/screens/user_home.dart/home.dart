// ignore_for_file: prefer_const_constructors

import 'package:connecto/screens/user_home.dart/tabs/feed.dart';
import 'package:connecto/screens/user_home.dart/tabs/notifications.dart';
import 'package:connecto/screens/user_home.dart/tabs/profile.dart';
import 'package:connecto/screens/user_home.dart/tabs/search.dart';
import 'package:flutter/material.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({Key? key}) : super(key: key);

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  static int currentIndex = 0;
  bool isSelected = true;
  List<Widget> screens = [
    FeedPage(),
    SearchScreen(),
    NotificationsPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Color(0xff585656),
        unselectedItemColor: Colors.white60,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          /// Home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: currentIndex == 0 ? Colors.white : Colors.white54,
            ),
            label: '',
          ),

          /// Search
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              color: currentIndex == 1 ? Colors.white : Colors.white54,
            ),
            label: '',
          ),

          /// Notification
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_rounded,
              color: currentIndex == 2 ? Colors.white : Colors.white54,
            ),
            label: '',
          ),

          /// Profile
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: currentIndex == 3 ? Colors.white : Colors.white54,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
