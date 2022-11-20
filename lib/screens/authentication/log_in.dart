// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:connecto/screens/authentication/log_in.dart';
import 'package:connecto/screens/authentication/sign_in.dart';
import 'package:connecto/screens/authentication/widgets/password_fields.dart';
import 'package:connecto/screens/user_home.dart/home.dart';
import 'package:connecto/styling/colors.dart';
import 'package:connecto/styling/text_fields.dart';
import 'package:connecto/styling/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOG IN',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: appGradiant(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(56),
            topRight: Radius.circular(56),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, -18),
              blurRadius: 28,
            ),
          ],
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25, 100, 25, 19),
                child: TextFormField(
                    style: smallTextStyle,
                    decoration:
                        textFieldDecoration.copyWith(hintText: 'Username'),
                    onChanged: (value) {}),
              ),
              PasswordTextField(),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password ?')),
              ),
              SizedBox(height: 40),
              Text(
                'Or sign in with',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/google_icon.png',
                    height: 37,
                  ),
                  SizedBox(width: 17),
                  Image.asset(
                    'assets/icons/twitter_icon.png',
                    height: 37,
                  ),
                  SizedBox(width: 17),
                  Image.asset(
                    'assets/icons/fb_icon.png',
                    height: 37,
                  ),
                ],
              ),
              SizedBox(height: 45),
              InkWell(
                onTap: () {
                  Get.offAll(HomePageUser(), transition: Transition.cupertino);
                },
                child: Container(
                  height: 45,
                  width: 226,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(45),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 7),
                        blurRadius: 23,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'LOG IN',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Don’t have an account ? ',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.off(
                              SignInPage(),
                              transition: Transition.leftToRightWithFade,
                            );
                          }),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
