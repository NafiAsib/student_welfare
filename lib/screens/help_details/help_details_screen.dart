import 'package:flutter/material.dart';

class HelpDetailsScreen extends StatefulWidget {
  final String appbarTitle;
  const HelpDetailsScreen({
    Key? key,
    this.appbarTitle = 'Need help on Java Project',
  }) : super(key: key);

  @override
  _HelpDetailsScreenState createState() => _HelpDetailsScreenState();
}

class _HelpDetailsScreenState extends State<HelpDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appbarTitle),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
        child: Column(
          children: [
            // Text(
            //   'Need help on Java Project',
            //   style: Theme.of(context).textTheme.headline1,
            // ),
            const Align(
                alignment: Alignment.topRight, child: Payable(text: 'PAID')),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFF6998AB).withOpacity(0.5),
                        width: 5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    'assets/images/placeholder-avatar.png',
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text(
                      'Abdul Kalam',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'CSE\'17',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
              ],
            ),
            Text(
              'Need help on a Java project for a academic course. Payment is negotiable. You have to guide me on creating an android project from scratch using Android studio and Java. Kotlin/Flutter/React Native aren\'t allowed.',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(Icons.call),
                SizedBox(
                  width: 8,
                ),
                Text('+8801XXXXXXXX'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(Icons.email),
                SizedBox(
                  width: 8,
                ),
                Text('u1704000@student.cuet.ac.bd'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 8,
                ),
                Text('Shaheed Mohammad Shah Hall'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Payable extends StatelessWidget {
  final String text;
  const Payable({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFCBF1F5),
        ),
        color: const Color(0xFFE3FDFD),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
