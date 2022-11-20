// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:connecto/screens/creator_home/creater_data.dart';
import 'package:connecto/screens/user_home.dart/home.dart';
import 'package:connecto/screens/user_home.dart/home_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatorProfilePage extends StatelessWidget {
  const CreatorProfilePage({Key? key}) : super(key: key);

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
                      'CREATOR',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                  Container(
                    height: 109,
                    width: 162,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 13),
                          blurRadius: 28,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Subscribers',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.people_rounded,
                              color: Colors.black54,
                            ),
                            Text(
                              '120',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
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
                    itemCount: creatorProfileSettings.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(
                            creatorProfileIcons[index],
                            color: Colors.white70,
                          ),
                          title: Text(creatorProfileSettings[index]),
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
                onTap: () => Get.off(HomePageUser()),
                child: Container(
                  margin: EdgeInsets.only(bottom: 26, left: 15, right: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 48,
                  width: 200,
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
                      'Exit Creator Mode',
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
