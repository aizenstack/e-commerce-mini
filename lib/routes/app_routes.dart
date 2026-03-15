import 'package:flutter/material.dart';
import '../features/auth/login_page.dart';
import '../features/home/home_page.dart';

class AppRoutes {
  static const String login = '/auth/login';
  static const String home = '/';

  static Map<String, WidgetBuilder> routes = {
    login: (context) =>const LoginPage(),
    home: (context) => const HomePage(),
  };
}