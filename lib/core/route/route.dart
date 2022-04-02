import 'package:flutter/material.dart';
import 'package:student_welfare/screens/dashboard/dashboard_screen.dart';
import 'package:student_welfare/screens/help_details/help_details_screen.dart';
import 'package:student_welfare/screens/log_in/log_in_screen.dart';
import 'package:student_welfare/screens/profile/profile_screen.dart';

class AppRoute {
  static const String initialRoute = '/';
  // static const String initialRoute = '/help-details';
  // static const String initialRoute = '/profile';
  static const String dashboard = '/dashboard';
  AppRoute._();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _getMaterialPageRoute(const LoginScreen());
      case '/dashboard':
        return _getMaterialPageRoute(const DashboardScreen());
      case '/help-details':
        return _getMaterialPageRoute(const HelpDetailsScreen());
      case '/profile':
        return _getMaterialPageRoute(const ProfileScreen());

      default:
        return _errorRoute();
    }
  }

  static _getMaterialPageRoute(Widget child) {
    return MaterialPageRoute(
      builder: (context) => child,
    );
  }

  static MaterialPageRoute _errorRoute() {
    return _getMaterialPageRoute(const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Something is wrong!'),
        ),
      ),
    ));
  }
}
