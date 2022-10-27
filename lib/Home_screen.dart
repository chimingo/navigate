import 'package:flutter/material.dart';

import 'About_screen.dart';
import 'helper/navigate_me.dart';
import 'profile_screen.dart';
import 'setting_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          GestureDetector(
            onTap: (){
              goTo (context,const SettingScreen());
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                goTo(context, const AboutScreen());
              },
              child: const Text(" About"),
            ),
            ElevatedButton(
              onPressed: () {
                goTo(context, const ProfileScreen());
              },
              child: const Text(" Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
            