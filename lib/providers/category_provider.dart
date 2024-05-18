import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_to_do_app/utils/utils.dart';

final categoryProvider = StateProvider.autoDispose<TaskCategories>((ref) {
  return TaskCategories.others;
});
