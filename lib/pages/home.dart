import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/bottomappbar.dart';
import '../components/drawer.dart';
import '../components/post.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 190, 190),
      drawer: const MyDrawer(),
      appBar: MyAppBar(),
      bottomNavigationBar: const MyBottomAppBar(),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        children: [
          Container(color: Colors.white, child: Post()),
          const SizedBox(
            height: 5,
          ),
          Container(color: Colors.white, child: Post())
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
