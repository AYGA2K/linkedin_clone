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
        children: [
          //Section 1 of the profile page containing the pictures and some basic
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    // The bottom image
                    Image(
                      fit: BoxFit.cover,
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      image: const AssetImage('assets/Linux.jpg'),
                    ),
                    const SizedBox(
                      height: 180,
                    ),
                    const Positioned(
                      left: 15,
                      top: 75,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimages6.fanpop.com%2Fimage%2Fphotos%2F37300000%2F-Kid-Law-I-Want-To-Kill-Them-All-one-piece-37325742-1024-624.png&f=1&nofb=1&ipt=3f9e20d5fdf8b420b1c19e912fdd8ed792fa1bcb9d5fd03af38839b0e2da1123&ipo=images",
                        ),
                      ),
                    ),

                    // The top image, positioned in the center
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Trafalgar D. Water Law",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "One Piece",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 13),
                      ),
                      const Text(
                        "New World",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 109, 107, 102),
                            fontSize: 11),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "69 Connections",
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 99, 177),
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                elevation: const MaterialStatePropertyAll(0),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 7, 79, 214)),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(150, 25)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                            child: const Text("Open To"),
                            onPressed: () {},
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                //remove shadow from button
                                // every proprety in ButtonStyle has to be a MaterialStateProperty
                                elevation: const MaterialStatePropertyAll(0),
                                foregroundColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 4, 87, 230)),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(150, 25)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 4, 87, 230)),
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                            child: const Text("Add section"),
                            onPressed: () {},
                          ),
                          ElevatedButton(
                            style: const ButtonStyle(
                                elevation: MaterialStatePropertyAll(0),
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.grey),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white),
                                shape: MaterialStatePropertyAll(CircleBorder(
                                    side: BorderSide(
                                        color: Colors.grey, width: 1.5)))),
                            onPressed: () {},
                            child: const Icon(Icons.more_horiz_outlined),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Analytics",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Icon(Icons.visibility, color: Colors.grey),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Private to you",
                      style: TextStyle(color: Color.fromARGB(255, 86, 84, 84)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
