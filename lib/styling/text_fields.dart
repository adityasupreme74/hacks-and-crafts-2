// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

InputDecoration textFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
  fillColor: Colors.white,
  filled: true,
  hintStyle: TextStyle(
    fontSize: 18,
    color: Color(0x88585656),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);
