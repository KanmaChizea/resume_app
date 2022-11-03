import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_app/core/state_management/tabbar_cubit.dart';
import 'package:resume_app/core/state_management/theme_cubit.dart';
import 'package:resume_app/core/styles/theme.dart';
import 'package:resume_app/widgets/about/about_me.dart';
import 'package:resume_app/widgets/education/education.dart';
import 'package:resume_app/widgets/experience/experience.dart';

import 'widgets/tab_bar/custom_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TabBarCubit()),
        BlocProvider(create: (context) => ThemeCubit())
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: context.watch<ThemeCubit>().state
              ? ThemeMode.light
              : ThemeMode.dark,
          home: const Resume(),
        );
      }),
    );
  }
}

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Resume', style: Theme.of(context).textTheme.headline1),
            IconButton(
                onPressed: () => context.read<ThemeCubit>().toggleTheme(),
                icon: context.watch<ThemeCubit>().state
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode, color: Colors.white))
          ],
        ),
        Expanded(
          child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? Axis.vertical
                      : Axis.horizontal,
              children: [
                const CustomTabBar(),
                Padding(
                  padding:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? const EdgeInsets.only(top: 32)
                          : const EdgeInsets.only(left: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 160,
                    height: MediaQuery.of(context).size.height - 250,
                    child: BlocBuilder<TabBarCubit, int>(
                        builder: (context, state) {
                      switch (state) {
                        case 0:
                          return const AboutMe();
                        case 1:
                          return const Experience();
                        default:
                          return const Education();
                      }
                    }),
                  ),
                ),
              ]),
        )
      ]),
    ));
  }
}
