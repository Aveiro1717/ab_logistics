import 'package:ab_logistics/screens/profile_screen.dart';
import 'package:ab_logistics/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        elevation: 0,
        backgroundColor: AppColors.imageColor,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backpic.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  prefixIcon: Icon(Icons.person, color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text('Remember Me'),
                      Checkbox(
                        value: rememberMe,
                        onChanged: (newValue) {
                          setState(() {
                            rememberMe = newValue ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Forgot Password?'),
                        ),
                      );
                    },
                    child: const Text('Forgot Password?'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;

                  if (username.isNotEmpty &&
                      password.isNotEmpty &&
                      password.length >= 8) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()),
                    );
                  } else if (username.isNotEmpty &&
                      password.isNotEmpty &&
                      password.length < 8) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content:
                        Text('Password must be at least 8 characters long'),
                      ),
                    );
                  } else if (username.isEmpty && password.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter a username.'),
                      ),
                    );
                  } else if (username.isNotEmpty && password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter a password.'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter a username and password.'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 50),
                  backgroundColor: AppColors.mainGreen,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 50),
                  backgroundColor: AppColors.mainGreen,
                ),
                child: const Text(
                  'Signup',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
