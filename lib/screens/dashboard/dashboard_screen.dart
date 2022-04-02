import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_welfare/screens/contact/contact_screen.dart';
import 'package:student_welfare/screens/courses/course_screen.dart';
import 'package:student_welfare/screens/dashboard/dashboard_provider.dart';
import 'package:student_welfare/screens/help_list/help_list_screen.dart';
import 'package:student_welfare/screens/mental_health/mental_health_screen.dart';
import 'package:student_welfare/screens/teachers_rating/teachers_screen.dart';
import 'package:student_welfare/widgets/bottom_navigation.dart';
import 'package:student_welfare/widgets/custom_drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> appbarStrings = [
    'CUET Student Welfare',
    'Courses: Level 3 Term II',
    'Teachers',
    'Mental Health',
    'Reach out to us'
  ];
  @override
  Widget build(BuildContext context) {
    // final notifier = Provider.of<DashboardProvider>(context, listen: false);
    return Consumer<DashboardProvider>(
      builder: (context, value, child) => Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          title: Text(appbarStrings[value.currentIndex]),
        ),
        bottomNavigationBar: const CustomBottomNavigationbar(),
        body: Consumer<DashboardProvider>(builder: (context, value, child) {
          if (value.currentIndex == 0) {
            return const HelpListScreen();
          } else if (value.currentIndex == 1) {
            return const CoursesScreen();
          } else if (value.currentIndex == 2) {
            return const TeachersScreen();
          } else if (value.currentIndex == 3) {
            return const MentalHealthScreen();
          } else {
            return const SingleChildScrollView(child: ContactScreen());
          }
        }),
      ),
    );
  }
}
