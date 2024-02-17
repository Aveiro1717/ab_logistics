//Develop a forgot password page
//Add a loop that does not accept empty entries for pickupscreen, trackorder screen
//Add a feature that if a user hovers over an option in the profile page, it will bring a picture of what relates to that page along with some writings
//Add a selection choice for Nation and State in Shipping Details Screen
import 'package:ab_logistics/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LogisticsApp());
}


class LogisticsApp extends StatelessWidget {
  const LogisticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const OnboardingScreen(),
    );
  }
}













