import 'package:ab_logistics/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';


class QuicksendScreen extends StatelessWidget {
  const QuicksendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Container(
          margin: const EdgeInsets.only(
            left: 0.1,
            top: 2.0,
            bottom: 92,
            right: 0.1,
          ),
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
              padding: const EdgeInsets.only(left: 10.0, top: 172.0),
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '    Quick ',
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontSize: 22,
                      ),
                    ),
                    TextSpan(
                      text: 'send',
                      style: TextStyle(
                        color: AppColors.mainPink,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        fontSize: 22,
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
              width: 200,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Center(
              child: Container(
                width: 140,
                height: 60,
                color: AppColors.mainGreen,
                child: const Center(
                  child: Text(
                    'Package details',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 110,
                  height: 70,
                  color: AppColors.mainGreen,
                  child: const Center(
                    child: Text(
                      'Small Weight',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 110,
                  height: 70,
                  color: AppColors.mainGreen,
                  child: const Center(
                    child: Text(
                      'Medium Weight',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 110,
                  height: 70,
                  color: AppColors.mainGreen,
                  child: const Center(
                    child: Text(
                      'Large Weight',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              children: [
                const SizedBox(width: 0),
                Container(
                  width: 140,
                  height: 40,
                  color: AppColors.mainGreen,
                  child: const Center(
                    child: Text(
                      'Show Price',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(width: 87),
                        Container(
                          height: 20,
                          width: 46,
                          decoration: BoxDecoration(
                            color: AppColors.mainGrey,
                            border: Border.all(
                              color: AppColors.mainGrey,
                            ),
                          ),
                        ),
                        const SizedBox(width: 24),
                        const Text(
                          'Fragile',
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
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(width: 89),
                        Container(
                          height: 20,
                          width: 46,
                          decoration: BoxDecoration(
                            color: AppColors.mainGrey,
                            border: Border.all(
                              color: AppColors.mainGrey,
                            ),
                          ),
                        ),
                        const SizedBox(width: 1),
                        const Text(
                          '     Priority',
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
                const SizedBox(width: 30),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'images/quicksend.png',
                  width: 594,
                  height: 220,
                  fit: BoxFit.fill,
                ),
                const Positioned(
                  bottom: 140,
                  child: Text(
                    'Enter Shipping Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
