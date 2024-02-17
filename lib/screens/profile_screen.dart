import 'package:ab_logistics/screens/payment_screen.dart';
import 'package:ab_logistics/screens/pickup_screen.dart';
import 'package:ab_logistics/screens/quick_send_screen.dart';
import 'package:ab_logistics/screens/shipping_details_screen.dart';
import 'package:ab_logistics/screens/track_order_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';
import 'about_screen.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.image2Color,
        flexibleSpace: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 1, right: 40, top: 34),
            child: IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 60,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/darkpic.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 160,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: AppColors.mainGreen, //
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(90),
                      right: Radius.circular(90),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Profile',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: AppColors.mainGreen,
                    ),
                    child: const Text(
                      'About',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuicksendScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: AppColors.mainGreen,
                    ),
                    child: const Text(
                      'Quicksend',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PickupScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: AppColors.mainGreen,
                    ),
                    child: const Text(
                      'Pickup',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShippingdetailsScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: AppColors.mainGreen,
                    ),
                    child: const Text(
                      'Shipping',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: AppColors.mainGreen,
                    ),
                    child: const Text(
                      'Payment',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrackorderScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: AppColors.mainGreen,
                    ),
                    child: const Text(
                      'Track Order',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: AppColors.mainGreen,
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
