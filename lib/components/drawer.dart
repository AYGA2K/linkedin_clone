import 'package:flutter/material.dart';

class MyDrawer extends Drawer {
  const MyDrawer({super.key});
  @override
  Widget? get child => ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimages6.fanpop.com%2Fimage%2Fphotos%2F37300000%2F-Kid-Law-I-Want-To-Kill-Them-All-one-piece-37325742-1024-624.png&f=1&nofb=1&ipt=3f9e20d5fdf8b420b1c19e912fdd8ed792fa1bcb9d5fd03af38839b0e2da1123&ipo=images",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Trafalgar D. Water Law",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 6,
                ),
                InkWell(
                    child: const Text(
                      'View Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 101, 100, 100)),
                    ),
                    onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '11 profile views',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 101, 100, 100)),
                )
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Groups',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text(
              'Events',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          const SizedBox(
            height: 200,
          ),
          SizedBox(
            height: 200,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(width: 0.3, color: Colors.grey)),
              ),
              child: ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                onTap: () {},
              ),
            ),
          ),
        ],
      );
}
