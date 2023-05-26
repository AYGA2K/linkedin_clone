import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/drawer.dart';
import '../components/post.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 190, 190),
      drawer: const MyDrawer(),
      appBar: MyAppBar(),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        unselectedItemColor: const Color.fromARGB(255, 116, 115, 115),
        unselectedFontSize: 6,
        // fixedColor: Color.fromARGB(255, 116, 115, 115),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
            ),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_rounded,
            ),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
            ),
            label: 'Jobs',
          ),
        ],
      ),
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.pushNamed(context, '/');
          break;
        default:
      }
    });
  }
}
