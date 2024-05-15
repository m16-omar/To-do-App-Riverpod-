import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_to_do_app/data/data.dart';
import 'package:riverpod_to_do_app/utils/utils.dart';
import 'package:riverpod_to_do_app/widgets/circle_container.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          CircleContainer(
            color: task.category.color.withOpacity(0.3),
            child: Icon(
              task.category.icon,
              color: task.category.color,
            ),
          ),
          Gap(16),
          Text(
            task.title,
            style: style.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            task.time,
            style: style.titleMedium,
          ),
          Gap(16),
          Visibility(
            visible: !task.isCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Task to be completed on ${task.date}'),
                Icon(
                  Icons.check_box,
                  color: task.category.color,
                ),
              ],
            ),
          ),
          Gap(16),
          Text(
            task.note.isEmpty
                ? 'There is no additional note for this task'
                : task.note,
          ),
        ],
      ),
    );
  }
}
