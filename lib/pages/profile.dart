import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/bottomappbar.dart';
import '../components/drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 190, 190),
      drawer: const MyDrawer(),
      appBar: MyAppBar(),
      bottomNavigationBar: const MyBottomAppBar(),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        children: const [
          Text("Profile"),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
