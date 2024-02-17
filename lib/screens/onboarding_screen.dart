import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backpic.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Welcome to ',
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.mainGreen,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      TextSpan(
                        text: 'Ab Logistics!',
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.mainPink,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 70),
                  ),
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Get ',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.mainPink,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        TextSpan(
                          text: 'Started',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.mainGreen,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}