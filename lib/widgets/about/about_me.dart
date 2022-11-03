import 'package:flutter/material.dart';
import '../../data/constants/about.dart';
import 'about_me_section.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Row(
          children: [
            const CircleAvatar(
                radius: 60, backgroundImage: AssetImage('assets/avi.jpg')),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chizea Ogechukwukanma',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(height: 8),
                Text(
                  'Flutter developer',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 20),
        const AboutMeSection(title: 'Bio', body: bio),
        const SizedBox(height: 20),
        const AboutMeSection(
          title: 'What i can offer',
          body: whatCanIOffer,
        ),
        const SizedBox(height: 20),
        const AboutMeSection(
          title: 'Skills',
          body: skills,
        ),
        const SizedBox(height: 20),
        const AboutMeSection(
          title: 'Interests',
          body: interests,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: smList,
        )
      ],
    );
  }
}
