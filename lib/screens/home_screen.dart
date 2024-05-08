import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:riverpod_to_do_app/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_to_do_app/widgets/common_container.dart';
import 'package:riverpod_to_do_app/widgets/display_white_text.dart';

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
            top: 170,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CommonContainer(
                    height: deviceSize.height * 0.3,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      padding: EdgeInsets.zero,
                      itemBuilder: (ctx, index) {
                        return Text('Home');
                      },
                    ),
                  ),
                  Gap(20),
                  Text(
                    'Completed',
                    style: context.textTheme.headlineMedium,
                  ),
                  Gap(20),
                  CommonContainer(
                    height: deviceSize.height * 0.25,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      padding: EdgeInsets.zero,
                      itemBuilder: (ctx, index) {
                        return Text('Home');
                      },
                    ),
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
        ],
      ),
    );
  }
}
