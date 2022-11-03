import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title.toUpperCase(), style: Theme.of(context).textTheme.caption),
      const SizedBox(height: 8),
      Text(body, style: Theme.of(context).textTheme.bodyText1)
    ]);
  }
}
