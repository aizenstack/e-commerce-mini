import 'package:flutter/material.dart';
import '../features/home/home_page.dart';

class AppRoutes {
  static const String home = '/';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
  };
}