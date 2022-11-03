import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_app/core/state_management/tabbar_cubit.dart';
import 'package:resume_app/core/styles/colors.dart';

import '../../core/state_management/theme_cubit.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.index,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<TabBarCubit>().setCurrentTab(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: context.watch<TabBarCubit>().state == index
                    ? Theme.of(context).primaryColor
                    : Colors.transparent,
                width: 2)),
        child: Column(
          children: [
            Icon(icon,
                color:
                    context.watch<ThemeCubit>().state ? black : Colors.white),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
