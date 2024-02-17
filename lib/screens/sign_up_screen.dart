import 'package:ab_logistics/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final String emailSuffix = '@gmail.com';

  String? _validatePassword(String? value) {
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  Color mainGreen = const Color(0xFF7BA8A0);
  Color mainPink = const Color(0xFFD4A2AB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        elevation: 0,
        backgroundColor: Colors.white38,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: mainGreen,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 105,
            height: 10,
            padding: const EdgeInsets.all(8),
            child: IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: mainGreen,
                borderRadius: BorderRadius.circular(15),
              ),
              width: 250,
              height: 50,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Sign',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(
                        text: 'up',
                        style: TextStyle(
                          color: mainPink,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 54),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                          suffixText: emailSuffix,
                          suffixStyle: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _phoneController,
                              keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(11),
                              ],
                              decoration: const InputDecoration(
                                labelText: 'Phone',
                                labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        validator: _validatePassword,
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          String username = _usernameController.text;
                          String password = _passwordController.text;
                          String confirmPassword =
                              _confirmPasswordController.text;
                          String phone = _phoneController.text;
                          String email = _emailController.text;

                          if (username.isNotEmpty &&
                              password.isNotEmpty &&
                              password.length >= 8 &&
                              confirmPassword == password &&
                              email.isNotEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Account Created Successfully!'),
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                            );
                          } else if (username.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please enter a username.'),
                              ),
                            );
                          } else if (email.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please enter an email.'),
                              ),
                            );
                          } else if (phone.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please enter a phone number.'),
                              ),
                            );
                          } else if (phone.isNotEmpty && phone.length != 11) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                Text('Please enter a VALID phone number.'),
                              ),
                            );
                          } else if (password.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please enter a password.'),
                              ),
                            );
                          } else if (password.isNotEmpty &&
                              password.length <= 8) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Password must be at least2 8 characters.'),
                              ),
                            );
                          } else if (confirmPassword.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please verify your password.'),
                              ),
                            );
                          } else if (confirmPassword.isNotEmpty &&
                              confirmPassword != password) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Passwords do not match.'),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(160, 50),
                          backgroundColor: mainGreen,
                        ),
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
