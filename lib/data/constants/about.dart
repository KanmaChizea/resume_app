import 'package:flutter/material.dart';

import '../../widgets/about/social_media_links.dart';
import '../models/social_media_icons.dart';

List<Widget> smList = [
  SMLink(SocialMedia(
      iconPath: 'assets/twitter.svg', link: 'https://twitter.com/ogey__')),
  SMLink(SocialMedia(
      iconPath: 'assets/linkedin.svg',
      link: 'https://www.linkedin.com/in/ogechukwukanma-chizea-42498461')),
  SMLink(SocialMedia(
      iconPath: 'assets/github.svg', link: 'https://github.com/KanmaChizea')),
];

const String whatCanIOffer =
    "I am well-versed in object-oriented programming, data structures and algorithms, user interface guidelines, frameworks, and sensors. I thrive both alone and with a team. I set goals and am motivated by creativity .I'm also always willing to learn from developers with more experience and am willing to listen to them.";

const String bio =
    'Hello, my name is Kanma. I am a mobile developer specialized in developing (and occassionally designing) optimal and user-friendly applications using Flutter. When I\'m not writing codes, I enjoy watching TV shows, listening to The Weeknd and reading thriller novels.';

const String skills = '''\u2022 Dart
\u2022 Flutter
\u2022 Kotlin
\u2022 Firebase
\u2022 Git/Github
\u2022 Figma''';

const String interests = '''\u2022 Series
\u2022 Music
\u2022 Thriller Novels''';
