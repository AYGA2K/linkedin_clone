import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({super.key});

  @override
  // TODO: implement backgroundColor
  Color? get backgroundColor => Colors.white;
  @override
  // TODO: implement leading
  Widget? get leading => Container(
        padding: const EdgeInsets.all(8),
        child: Builder(builder: (context) {
          //the Scaffold.of function would have returned null without the builder
          return GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimages6.fanpop.com%2Fimage%2Fphotos%2F37300000%2F-Kid-Law-I-Want-To-Kill-Them-All-one-piece-37325742-1024-624.png&f=1&nofb=1&ipt=3f9e20d5fdf8b420b1c19e912fdd8ed792fa1bcb9d5fd03af38839b0e2da1123&ipo=images",
              ),
            ),
          );
        }),
      );
  @override
  // TODO: implement title
  Widget? get title => Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 224, 229, 234),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                labelText: "Search",
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                border: InputBorder.none),
          ),
        ),
      );
  @override
  // TODO: implement actions
  List<Widget>? get actions => [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.message),
          color: const Color.fromARGB(221, 56, 54, 54),
        )
      ];
}
