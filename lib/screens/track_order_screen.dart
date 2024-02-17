import 'package:ab_logistics/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';


class TrackorderScreen extends StatefulWidget {
  const TrackorderScreen({super.key});

  @override
  _TrackorderScreenState createState() => _TrackorderScreenState();
}

class _TrackorderScreenState extends State<TrackorderScreen> {

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
                      text: 'Orders',
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: SizedBox(
                height: 284,
                width: 343,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.mainGreen,
                    border: Border.all(color: AppColors.mainGreen),
                  ),
                  child: const Text(
                    '\n   Pickup Location:\n   Drop Location:\n   Expected Delivery:\n   Order ID:',
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
            const SizedBox(height: 66),
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
                backgroundColor: AppColors.mainGreen,
              ),
              child: const Text(
                'Track Order',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 186),
          ],
        ),
      ),
    );
  }
}
