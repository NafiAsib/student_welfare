import 'package:flutter/material.dart';
import 'package:student_welfare/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/cuet.png',
                  height: 250,
                ),
                Text(
                  'Login to Student Welfare System',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const CustomTextFormField(
                        label: 'User name or Email',
                        prefix: Icon(Icons.person),
                      ),
                      const CustomTextFormField(
                        label: 'Password',
                        prefix: Icon(Icons.lock),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/dashboard');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
