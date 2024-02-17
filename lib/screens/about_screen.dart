import 'package:ab_logistics/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Container(
          margin: const EdgeInsets.only(
              left: 0.1, top: 2.0, bottom: 92, right: 0.1),
          decoration: BoxDecoration(
            color: AppColors.mainGreen,
            borderRadius: BorderRadius.circular(6),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ),
        actions: const [],
        toolbarHeight: 140,
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 42.0, top: 82.0),
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '',
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: '',
                      style: TextStyle(
                        color: AppColors.mainPink,
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
            Image.asset(
              'images/screen.png',
              fit: BoxFit.fill,
              height: 280,
              width: 240,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'About ',
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: 'Us',
                      style: TextStyle(
                        color: AppColors.mainPink,
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
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'images/delivery.png',
                height: 300,
                width: 400, // Full width
                fit: BoxFit.fill,
              ),
              const Text(
                'AB Logistics is an efficient dispatching agency that aids in streamlining transportation and order processing for businesses',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                  height: 1.4,
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            alignment: Alignment.centerLeft,
            child: const Text(
              '\t\t\t\t\tShipping Services',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 20),
                    Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.mainGrey,
                        border: Border.all(color: AppColors.mainGrey),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Pickup',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 20),
                    Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.mainGrey,
                        border: Border.all(color: AppColors.mainGrey),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Delivery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
