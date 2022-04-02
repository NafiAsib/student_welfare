import 'package:flutter/material.dart';
import 'package:student_welfare/screens/teachers_rating/teachers_rating_card.dart';

class TeachersScreen extends StatefulWidget {
  const TeachersScreen({Key? key}) : super(key: key);

  @override
  _TeachersScreenState createState() => _TeachersScreenState();
}

class _TeachersScreenState extends State<TeachersScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => Column(
          children: const [TeachersRatingCard(), SizedBox(height: 5)],
        ),
      ),
    );
  }
}
