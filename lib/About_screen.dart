import 'package:flutter/material.dart';
import 'package:navigate/setting_screen.dart';

import 'helper/navigate_me.dart';
import 'profile_screen.dart';


class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
    ),
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                goTo(context, const ProfileScreen());
              },
              child: const Text("Profile"),
            ),
            ElevatedButton(
              onPressed: () {
                goTo(context, const SettingScreen());
              },
              child: const Text(" Setting"),
            ),
          ],
        ),
      ),
    );
  }
}

    
 