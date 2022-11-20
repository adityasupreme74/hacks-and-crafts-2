// ignore_for_file: prefer_const_constructors

import 'package:connecto/screens/creator_home/tabs/notification.dart';
import 'package:connecto/screens/creator_home/tabs/posts.dart';
import 'package:connecto/screens/creator_home/tabs/profile.dart';
import 'package:connecto/screens/user_home.dart/tabs/feed.dart';
import 'package:connecto/screens/user_home.dart/tabs/notifications.dart';
import 'package:connecto/screens/user_home.dart/tabs/profile.dart';
import 'package:connecto/screens/user_home.dart/tabs/search.dart';
import 'package:flutter/material.dart';

class HomePageCreator extends StatefulWidget {
  const HomePageCreator({Key? key}) : super(key: key);

  @override
  State<HomePageCreator> createState() => _HomePageCreatorState();
}

class _HomePageCreatorState extends State<HomePageCreator> {
  static int currentIndex = 0;
  bool isSelected = true;
  List<Widget> screens = [
    CreatorProfilePage(),
    CreatorNotificationsPage(),
    CreatorPostsPage(),
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
          /// Profile
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: currentIndex == 0 ? Colors.white : Colors.white54,
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
              Icons.collections_rounded,
              color: currentIndex == 3 ? Colors.white : Colors.white54,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
