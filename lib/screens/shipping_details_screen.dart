import 'package:ab_logistics/screens/payment_screen.dart';
import 'package:ab_logistics/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class ShippingdetailsScreen extends StatefulWidget {
  const ShippingdetailsScreen({super.key});

  @override
  _ShippingdetailsScreenState createState() => _ShippingdetailsScreenState();
}

class _ShippingdetailsScreenState extends State<ShippingdetailsScreen> {
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
              padding: const EdgeInsets.only(left: 10.0, top: 82.0),
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Shipping',
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontSize: 22,
                      ),
                    ),
                    TextSpan(
                      text: ' Details',
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '    Username',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '    Country',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '    State',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '    Address',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '    Postal Code',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '    Phone',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 45),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Searching for riders...'),
                  ),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(160, 50),
                backgroundColor: AppColors.mainGreen,
              ),
              child: const Text(
                'Pay',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}