// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:connecto/screens/user_home.dart/home_data.dart';
import 'package:connecto/styling/colors.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NOTIFICATIONS',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: peopleImage.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 6,
                colors: [
                  Color(0xffB210FF),
                  Color(0xff5200FF),
                ],
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(peopleImage[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 230,
                  child: Text(
                    '${names[index]} posted a new photo ${index + 1}hr ago.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
