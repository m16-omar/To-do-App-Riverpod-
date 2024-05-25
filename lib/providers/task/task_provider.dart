import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_to_do_app/data/repositories/task_repository_provider.dart';
import 'package:riverpod_to_do_app/providers/providers.dart';

final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
