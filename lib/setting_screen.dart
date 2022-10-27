import 'package:flutter/material.dart';

import 'About_screen.dart';
import 'Home_screen.dart';
import 'helper/navigate_me.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                goTo(context, const AboutScreen());
              },
              child: const Text("Go to About"),
            ),
            ElevatedButton(
              onPressed: () {
                goTo(context, const HomeScreen());
              },
              child: const Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}