// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';

RadialGradient appGradiant() {
  return RadialGradient(
    center: Alignment.topRight,
    radius: 1,
    colors: [
      Color(0xffB210FF),
      Color(0xff5200FF),
    ],
  );
}
