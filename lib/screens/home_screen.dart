import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:riverpod_to_do_app/data/data.dart';
import 'package:riverpod_to_do_app/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_to_do_app/widgets/display_white_text.dart';
import 'package:riverpod_to_do_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'May 7, 2024',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: 'My To-do List',
                      fontSize: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: 'title 1',
                          note: 'note',
                          time: '12:30',
                          date: 'May,09',
                          category: TaskCategories.home,
                          isCompleted: false,
                        ),
                        Task(
                          title: 'title 2, title 2, title 2,title 2',
                          note: 'note',
                          time: '12:30',
                          date: 'May,09',
                          category: TaskCategories.shopping,
                          isCompleted: false,
                        ),
                      ],
                    ),
                    Gap(20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium,
                    ),
                    Gap(20),
                    DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: 'title 1',
                          note: 'note',
                          time: '12:30',
                          date: 'May,09',
                          category: TaskCategories.social,
                          isCompleted: true,
                        ),
                        Task(
                          title: 'title 2, title 2, title 2,title 2',
                          note: 'note',
                          time: '12:30',
                          date: 'May,09',
                          category: TaskCategories.health,
                          isCompleted: true,
                        ),
                      ],
                      isCompletedTasks: true,
                    ),
                    Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(text: 'Add New Task'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
