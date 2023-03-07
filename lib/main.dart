import 'package:flutter/material.dart';
import 'package:linkedin_clone/pages/profile.dart';
import 'package:linkedin_clone/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (context) => const MyHomePage(title: 'Home Page'),
        "/profile": (context) => const ProfilePage(title: 'Profile Page')
      },
    );
  }
}
