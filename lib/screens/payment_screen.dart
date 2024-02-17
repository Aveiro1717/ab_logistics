import 'package:ab_logistics/screens/profile_screen.dart';
import 'package:ab_logistics/screens/track_order_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';


class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
                      text: 'Pay',
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: 'ment',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: SizedBox(
                height: 144,
                width: 343,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.mainGreen,
                    border: Border.all(color: AppColors.mainGreen),
                  ),
                  child: const Text(
                    '   1.\n   2.\n   Amount:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      height: 2.2,
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            InkWell(
              child: SizedBox(
                height: 50,
                width: 343,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Text(
                    'Select Payment Method',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 2.2,
                      color: AppColors.mainGreen,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              child: SizedBox(
                height: 144,
                width: 343,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.mainGreen,
                    border: Border.all(color: AppColors.mainGreen),
                  ),
                  child: const Text(
                    '          Bank Transfer\n          Debit Card\n          Credit Card',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      height: 2.2,
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 76),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TrackorderScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
                shadowColor: Colors.white,
                surfaceTintColor: Colors.white,
                backgroundColor: Colors.white,
              ),
              child: const Text(
                'Proceed to Payment>>>',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 2.2,
                  color: AppColors.mainGreen,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 96),
          ],
        ),
      ),
    );
  }
}
