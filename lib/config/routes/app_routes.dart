import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_to_do_app/config/routes/routes.dart';
import 'package:riverpod_to_do_app/screens/screens.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigatorKey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.createtask,
    parentNavigatorKey: navigatorKey,
    builder: CreateTaskScreen.builder,
  ),
];
