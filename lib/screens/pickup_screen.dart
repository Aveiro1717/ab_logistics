import 'package:ab_logistics/screens/profile_screen.dart';
import 'package:ab_logistics/screens/shipping_details_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';


class PickupScreen extends StatefulWidget {
  const PickupScreen({super.key});

  @override
  _PickupScreenState createState() => _PickupScreenState();
}

class _PickupScreenState extends State<PickupScreen> {
  final _usernameController = TextEditingController();
  final _ordernumberController = TextEditingController();
  final _pickuplocationController = TextEditingController();

  List<String> registeredUsernames = [
    'Serenity125',
    'Willow78@!',
    'AlphaBeta789',
    'Radagast_TheBrown',
    'GalaxyExplorer',
    'Maverick_XYZ',
    'SunnySideUp567',
    'LunaMoonlight',
    'Dreamer_2023',
    'XanderKing4ever',
    'Pegasus_Rising',
    'SilverLining27',
    'TechNinja2022',
    'PhoenixFire678',
    'QuantumLeap777',
    'NeonKnight_91',
    'StealthPilot345',
    'MysticPanda#99',
    'NovaStorm2025',
    'LunarVoyager_11'
  ];
  List<String> registeredOrdernumbers = [
    'Yn6972451803',
    'Ft8964510267',
    'Xs1478963215',
    'Rc4685372910',
    'Jt2698501374',
    'Kp7541096328',
    'Gw2819463570',
    'Az5097326814',
    'Lc1468920735',
    ' Ba7986432150',
    'Qw3698745021',
    'Ef6583792140',
    'Hn4592681073',
    'Um1234567890',
    'Vr8569702134',
    'Po9512684370',
    'Xe8759624130',
    'Ir5821390764',
    'Zd3709516824',
    'Ts6391048725'
  ];
  List<String> registeredPickuplocations = [
    '12 Park Street, London, United Kingdom',
    '453 Lakeview Drive, Los Angeles, United States',
    '34 Maple Avenue, Toronto, Canada',
    '7 Rue de la Liberté, Paris, France',
    '56 Via Roma, Rome, Italy',
    '22 Rathausplatz, Berlin, Germany',
    '89 Kurfürstendamm, Berlin, Germany',
    '17 Kärntner Straße, Vienna, Austria',
    '101 Calle Gran Vía, Madrid, Spain',
    '8 Carrer de Sants, Barcelona, Spain',
    '5 Avinguda Diagonal, Barcelona, Spain',
    '32 Piazza del Duomo, Milan, Italy',
    '98 Herengracht, Amsterdam, Netherlands',
    '23 Karl Johans gate, Oslo, Norway',
    '19 Kungsträdgården, Stockholm, Sweden',
    '37 Nørrebrogade, Copenhagen, Denmark',
    ' 67 Stroget, Copenhagen, Denmark',
    '44 Princes Street, Edinburgh, United Kingdom',
    '76 Grafton Street, Dublin, Ireland',
    '55 Princes Street, Edinburgh, United Kingdom'
  ];

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
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              }),
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
                      text: 'Pick',
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: 'up',
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 100),
            TextFormField(
              controller: _usernameController,
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
              controller: _ordernumberController,
              decoration: const InputDecoration(
                labelText: '    Order Number',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _pickuplocationController,
              decoration: const InputDecoration(
                labelText: '    Pickup Location',
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text;
                String ordernumber = _ordernumberController.text;
                if (registeredUsernames.contains(username) &&
                    registeredOrdernumbers.contains(ordernumber)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Searching for riders...'),
                    ),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShippingdetailsScreen(),
                    ),
                  );
                } else if (!(registeredUsernames.contains(username))) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid Username'),
                    ),
                  );
                } else if (!(registeredOrdernumbers.contains(username))) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid Order Number'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(160, 50),
                backgroundColor: AppColors.mainGreen,
              ),
              child: const Text(
                'Pickup',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}