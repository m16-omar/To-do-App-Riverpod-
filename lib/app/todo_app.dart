import 'package:flutter/material.dart';
import 'package:riverpod_to_do_app/config/config.dart';
import 'package:riverpod_to_do_app/screens/home_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
