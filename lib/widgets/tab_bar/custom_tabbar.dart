import 'package:flutter/material.dart';

import 'tabbar_item.dart';

const List<Widget> tabBarItems = [
  TabBarItem(icon: Icons.person_outline, title: 'About me', index: 0),
  TabBarItem(icon: Icons.work_outline, title: 'Experience', index: 1),
  TabBarItem(icon: Icons.school_outlined, title: 'Education', index: 2),
];

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (MediaQuery.of(context).orientation == Orientation.portrait) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: tabBarItems,
        );
      } else {
        return SizedBox(
          width: 120,
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => tabBarItems[index],
              separatorBuilder: (context, index) => const SizedBox(height: 24),
              itemCount: 3),
        );
      }
    });
  }
}
