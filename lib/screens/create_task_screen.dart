import 'package:flutter/material.dart';
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
          children: [
            CommonTextField(
              title: 'Task Title',
              hintText: 'Task Title',
              controller: null,
            ),
            CommonTextField(
              title: 'Task Title',
              hintText: 'Task Title',
              controller: null,
            ),
            CommonTextField(
              title: 'Task Title',
              hintText: 'Task Title',
              controller: null,
            ),
            CommonTextField(
              title: 'Task Title',
              hintText: 'Task Title',
              controller: null,
            ),
          ],
        ),
      ),
    );
  }
}
