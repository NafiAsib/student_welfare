import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          Text(
            'Contact us directly with the following methods',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 30,
          ),
          const Contacts(name: 'Mr. A'),
          const Contacts(name: 'Mr. B'),
          const Contacts(name: 'Mr. C'),
        ],
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  final String name;
  const Contacts({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.person),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Director of Student Welfare',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.call),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '+8801XXXXXXXX',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(Icons.email),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'xyz@cuet.ac.bd',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        )
      ],
    );
  }
}
