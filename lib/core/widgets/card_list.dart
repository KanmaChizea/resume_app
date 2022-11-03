import 'package:flutter/material.dart';
import 'package:resume_app/widgets/education/education_card.dart';
import 'package:resume_app/widgets/experience/experience_card.dart';

import 'card.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key? key,
    required this.items,
    required this.isExperience,
  }) : super(key: key);
  final List items;
  final bool isExperience;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => AppCard(
            child: isExperience
                ? ExperienceCard(experienceModel: items[index])
                : EducationCard(educationModel: items[index])),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: items.length);
  }
}
