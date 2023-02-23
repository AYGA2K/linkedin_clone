import 'package:flutter/material.dart';

class MyBottomAppBar extends BottomAppBar {
  const MyBottomAppBar({super.key});

  @override
  // TODO: implement child
  Widget? get child => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox.fromSize(
            size: const Size(82, 50),
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 116, 115, 115),
                  ), // <-- Icon
                  Text("Home",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              Color.fromARGB(255, 116, 115, 115))), // <-- Text
                ],
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(82, 50),
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.group,
                    color: Color.fromARGB(255, 116, 115, 115),
                  ), // <-- Icon
                  Text("Network",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              Color.fromARGB(255, 116, 115, 115))), // <-- Text
                ],
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(82, 50),
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add_box_rounded,
                    color: Color.fromARGB(255, 116, 115, 115),
                  ), // <-- Icon
                  Text(
                    "Post",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 116, 115, 115)),
                  ), // <-- Text
                ],
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(82, 50),
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 116, 115, 115),
                  ), // <-- Icon
                  Text(
                    "Notifications",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 116, 115, 115)),
                  ), // <-- Text
                ],
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(82, 50),
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.work,
                    color: Color.fromARGB(255, 116, 115, 115),
                  ), // <-- Icon
                  Text(
                    "Jobs",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 116, 115, 115)),
                  ), // <-- Text
                ],
              ),
            ),
          ),
        ],
      );
}
