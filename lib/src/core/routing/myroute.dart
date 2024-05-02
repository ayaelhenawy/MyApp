import 'package:flutter/material.dart';

import '../../dashboard/view/page/dashboard_page.dart';

class MyRoute {
  static List<Route<dynamic>> initialRoutes = [
    MaterialPageRoute(builder: (_) => const DashboardPage()),
  ];

  static Route<dynamic> onNavigateByName(RouteSettings settings) {
    switch (settings.name) {
      case 'dashboard':
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      default:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
    }
  }
}
