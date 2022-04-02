import 'package:flutter/material.dart';
import 'package:student_welfare/screens/courses/course_card.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemBuilder: (context, index) => Column(
          children: const [CourseCard(), SizedBox(height: 5)],
        ),
      ),
    );
  }
}
