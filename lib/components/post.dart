import 'package:flutter/material.dart';

class Post extends Column {
  Post({super.key});

  @override
  // TODO: implement children
  List<Widget> get children => [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimages6.fanpop.com%2Fimage%2Fphotos%2F37300000%2F-Kid-Law-I-Want-To-Kill-Them-All-one-piece-37325742-1024-624.png&f=1&nofb=1&ipt=3f9e20d5fdf8b420b1c19e912fdd8ed792fa1bcb9d5fd03af38839b0e2da1123&ipo=images",
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Trafalgar D. Water Law",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Web Developer / mobile Developer',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 101, 100, 100)),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '1d',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 101, 100, 100)),
                            )
                          ],
                        ),
                        onTap: () {}),
                  ],
                ),
              ],
            ),
            SizedBox.fromSize(
              size: const Size(100, 50),
              child: Material(
                child: InkWell(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  splashColor: Colors.green,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.blue,
                      ), // <-- Icon
                      Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ), // <-- Text
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy"),
        const Image(
          image: AssetImage('assets/Dev.jpg'),
        ),
        const Divider(
          color: Color.fromARGB(255, 144, 142, 142),
          height: 10,
          thickness: 0.2,
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox.fromSize(
                size: const Size(50, 50),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {},
                  child: Column(
                    children: const [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Color.fromARGB(255, 116, 115, 115),
                        size: 20,
                      ), // <-- Icon
                      Text("Like",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(
                                  255, 116, 115, 115))), // <-- Text
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
                    children: const [
                      Icon(
                        Icons.message_outlined,
                        color: Color.fromARGB(255, 116, 115, 115),
                        size: 20,
                      ), // <-- Icon
                      Text("Comment",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(
                                  255, 116, 115, 115))), // <-- Text
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
                    children: const [
                      Icon(
                        Icons.repeat_outlined,
                        color: Color.fromARGB(255, 116, 115, 115),
                        size: 20,
                      ), // <-- Icon
                      Text("Repost",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(
                                  255, 116, 115, 115))), // <-- Text
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
                    children: const [
                      Icon(
                        Icons.send,
                        color: Color.fromARGB(255, 116, 115, 115),
                        size: 20,
                      ), // <-- Icon
                      Text("Send",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(
                                  255, 116, 115, 115))), // <-- Text
                    ],
                  ),
                ),
              ),
            ])
      ];
}
