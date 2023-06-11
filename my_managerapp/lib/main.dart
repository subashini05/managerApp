import 'package:flutter/material.dart';
import 'package:my_managerapp/HomePage.dart';
import 'package:my_managerapp/screens/Login.dart';
import 'package:my_managerapp/screens/SettingsScreen.dart';

import 'package:my_managerapp/screens/SplashScreen.dart';

void main() {
  runApp(const MyManagerApp());
}

class MyManagerApp extends StatelessWidget {
  const MyManagerApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => HomePage(),
        SettingsPage.routeName: (context) => SettingsPage(),
      },
    );
  }
}
