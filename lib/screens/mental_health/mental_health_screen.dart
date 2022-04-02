import 'package:flutter/material.dart';
import 'package:student_welfare/widgets/custom_text_form_field.dart';

class MentalHealthScreen extends StatefulWidget {
  const MentalHealthScreen({Key? key}) : super(key: key);

  @override
  _MentalHealthScreenState createState() => _MentalHealthScreenState();
}

class _MentalHealthScreenState extends State<MentalHealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      // height: double.infinity,
      child: Column(
        children: [
          Text(
            'Reach out to us if you have any issues',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'We\'ll get back to you as soon as possilbe',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFormField(
            label: 'Write your problem in details',
            isMulti: true,
          ),
          const SizedBox(
            height: 20,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
