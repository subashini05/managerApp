import 'package:flutter/material.dart';
import 'package:my_managerapp/HomePage.dart';
import 'package:my_managerapp/Login.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';

  final String personIcon = 'lib/assets/icons/PHome.png';
  final String addIcon = 'lib/assets/icons/Add Venture.png';
  final String paymentIcon = 'lib/assets/icons/User Shield.png';
  final String contactsIcon = 'lib/assets/icons/Contact Us.png';
  final String infoIcon = 'lib/assets/icons/Group.png';
  final String policyIcon = 'lib/assets/icons/policy.png';
  final String logoutIcon = 'lib/assets/icons/Lg.png';

  void _goToHomePage(BuildContext context) {
    Navigator.pop(context);
  }

  void _goToLoginPage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      LoginPage.routeName,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(55, 155, 103, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            _goToHomePage(context);
          },
        ),
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Image.asset(personIcon),
                  title: const Text('Profile'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image.asset(addIcon),
                  title: const Text('Add Venture'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image.asset(infoIcon),
                  title: const Text('Payments'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image.asset(contactsIcon),
                  title: const Text('Contact Us'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(policyIcon),
            title: const Text('About Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(paymentIcon),
            title: const Text('Privacy Policy'),
            onTap: () {},
          ),
          const Expanded(child: SizedBox()),
          Container(
            margin: const EdgeInsets.only(right: 150, bottom: 16),
            child: MaterialButton(
              onPressed: () {
                _goToLoginPage(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(logoutIcon),
                  const SizedBox(width: 8),
                  const Text('Log Out'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {
      LoginPage.routeName: (context) => const LoginPage(),
    },
  ));
}
