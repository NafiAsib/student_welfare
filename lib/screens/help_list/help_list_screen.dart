import 'package:flutter/material.dart';
import 'package:student_welfare/screens/help_list/help_widget.dart';

class HelpListScreen extends StatefulWidget {
  const HelpListScreen({Key? key}) : super(key: key);

  @override
  _HelpListScreenState createState() => _HelpListScreenState();
}

class _HelpListScreenState extends State<HelpListScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          children: const [HelpWidget(), SizedBox(height: 5)],
        ),
      ),
    );
  }
}
