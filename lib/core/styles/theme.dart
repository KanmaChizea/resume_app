import 'package:flutter/material.dart';
import 'package:resume_app/core/styles/textstyles.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.indigo,
    primaryColor: primaryColor,
    textTheme: const TextTheme(
        headline1: heading1,
        headline2: heading2,
        bodyText1: body,
        caption: caption));

ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: black,
    primarySwatch: Colors.indigo,
    primaryColor: grey,
    textTheme: TextTheme(
        headline1: heading1.copyWith(color: Colors.white),
        headline2: heading2.copyWith(color: Colors.white),
        bodyText1: body.copyWith(color: Colors.white),
        caption: caption.copyWith(color: Colors.white)));
