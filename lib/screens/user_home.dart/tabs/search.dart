// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:connecto/screens/user_home.dart/home_data.dart';
import 'package:connecto/styling/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: TextFormField(
              decoration: textFieldDecoration.copyWith(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
              ),
            ),
          ),
          SizedBox(
            height: Get.height - 200,
            child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.2, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      gradient: RadialGradient(
                        center: Alignment.topRight,
                        radius: 2,
                        colors: index == 0
                            ? [
                                Colors.redAccent,
                                Colors.orangeAccent,
                              ]
                            : [
                                Color(0xffB210FF),
                                Color(0xff5200FF),
                              ],
                      ),
                    ),
                    child: Center(
                        child: Text(
                      categories[index],
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
