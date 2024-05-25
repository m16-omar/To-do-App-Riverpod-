import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_to_do_app/data/data.dart';

final taskDatasourceProvider = Provider<TaskDatasource>((ref) {
  return TaskDatasource();
});
