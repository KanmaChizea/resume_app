import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resume_app/data/models/social_media_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SMLink extends StatelessWidget {
  const SMLink(
    this.socialMedia, {
    Key? key,
  }) : super(key: key);

  final SocialMedia socialMedia;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final url = Uri.parse(socialMedia.link);
        if (await canLaunchUrl(url)) {
          launchUrl(url);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Something went wrong!')));
        }
      },
      icon: SvgPicture.asset(
        socialMedia.iconPath,
        width: 24,
        height: 24,
      ),
    );
  }
}
