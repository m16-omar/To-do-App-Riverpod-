import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_to_do_app/widgets/widgets.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DisplayWhiteText(text: 'Add New Task'),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CommonTextField(
              title: 'Task Title',
              hintText: 'Task Title',
              controller: null,
            ),
            Gap(16),
            SelectCategory(),
            Gap(16),
            SelectDateTime(),
            Gap(16),
            CommonTextField(
              title: 'Note',
              hintText: 'Task note',
              controller: null,
              maxLines: 6,
            ),
            Gap(60),
            ElevatedButton(
              onPressed: () {},
              child: DisplayWhiteText(text: 'Save'),
            ),
          ],
        ),
      ),
    );
  }
}
