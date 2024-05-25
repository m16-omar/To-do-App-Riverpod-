import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_to_do_app/data/data.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  final datasource = ref.watch(taskDatasourceProvider);
  return TaskRepositoryImpl(datasource);
});
