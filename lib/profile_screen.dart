import 'package:flutter/material.dart';
import 'package:navigate/setting_screen.dart';

import 'Home_screen.dart';
import 'helper/navigate_me.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile")),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                goTo(context, const SettingScreen());
              },
              child: const Text("Setting"),
            ),
            ElevatedButton(
              onPressed: () {
                goTo(context, const HomeScreen());
              },
              child: const Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }
}