// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:connecto/screens/creator_home/home.dart';
import 'package:connecto/screens/user_home.dart/home_data.dart';
import 'package:connecto/screens/wallet/user_wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topRight,
          radius: 2.5,
          colors: [
            Color(0xffB210FF),
            Color(0xff5200FF),
          ],
        ),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(18, 10, 20, 20),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Image.asset(
                        'assets/logo.png',
                        height: 35,
                      ),
                    ),
                    SizedBox(width: Get.width / 4.5),
                    Text(
                      'PROFILE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                  image: DecorationImage(
                    image: NetworkImage(peopleImage[4]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Emily Fernandes',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'emily.fernandes@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 20),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          onTap: () => Get.to(UserWalletPage()),
                          leading: Icon(
                            profileIcons[index],
                            color: Colors.white70,
                          ),
                          title: Text(profileSettings[index]),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                            color: Colors.white70,
                          ),
                        ),
                      );
                    }),
              ),
              InkWell(
                onTap: () => Get.off(
                  HomePageCreator(),
                  transition: Transition.circularReveal,
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 24, left: 15, right: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 48,
                  width: 144,
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
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, -18),
                        blurRadius: 28,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Be a Creator',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
