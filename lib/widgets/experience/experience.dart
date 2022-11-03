import 'package:flutter/material.dart';

import 'package:resume_app/core/widgets/card_list.dart';
import 'package:resume_app/data/constants/experience.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardList(items: experienceList, isExperience: true);
  }
}
