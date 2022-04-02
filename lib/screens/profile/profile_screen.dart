import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  height: 100,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Dr. Mahfuzulhoq Chowdhury',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Assistant Professor',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Computer Science & Engineering',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
