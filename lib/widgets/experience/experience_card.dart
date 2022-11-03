import 'package:flutter/material.dart';

import 'package:resume_app/data/models/experience.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.experienceModel,
  }) : super(key: key);
  final ExperienceModel experienceModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.work_outline_outlined, color: Colors.white),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(experienceModel.role,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.white)),
            const SizedBox(height: 4),
            Text(
                '${experienceModel.companyName} \u2022 ${experienceModel.type}',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white)),
            const SizedBox(height: 4),
            Text(experienceModel.duration,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white)),
          ],
        ),
      ],
    );
  }
}
