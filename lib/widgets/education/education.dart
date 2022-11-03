import 'package:flutter/material.dart';
import 'package:resume_app/core/widgets/card_list.dart';

import '../../data/constants/education.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardList(items: educationList, isExperience: false);
  }
}
