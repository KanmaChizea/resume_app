import 'package:flutter/material.dart';

import 'package:resume_app/data/models/education.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.educationModel,
  }) : super(key: key);

  final EducationModel educationModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.school_outlined, color: Colors.white),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(educationModel.institution,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.white)),
            const SizedBox(height: 4),
            Text(educationModel.course,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white)),
            const SizedBox(height: 4),
            Text(educationModel.duration,
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
